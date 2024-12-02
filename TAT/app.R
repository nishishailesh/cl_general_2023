library(shiny)
library(pracma)
library(RMySQL)

options(scipen=999)
ui = fluidPage(
        fluidRow(
                column(12,htmlOutput("header")),
                column(12,htmlOutput("OOO")),
                column(4,numericInput("OW", label = h3("OPD=1046 Ward-1047"),value=1046)),
		column(4,
			dateInput(
			"date1",
			"From",
			value = NULL,
			min = NULL,
			max = NULL,
			format = "yyyy-mm-dd",
			startview = "month",
			weekstart = 0,
			language = "en",
			width = NULL,
			autoclose = TRUE,
			datesdisabled = NULL,
			daysofweekdisabled = NULL
			)
		       ),


                column(4,
                        dateInput(
                        "date2",
                        "From",
                        value = NULL,
                        min = NULL,
                        max = NULL,
                        format = "yyyy-mm-dd",
                        startview = "month",
                        weekstart = 0,
                        language = "en",
                        width = NULL,
                        autoclose = TRUE,
                        datesdisabled = NULL,
                        daysofweekdisabled = NULL
                        )
                      ),
                  column(12,verbatimTextOutput("statistics")),
                  column(12,plotOutput("plot"))
                )
              )
      
server = function(input, output, session) 
{
    output$header=renderText("<H1 class='text-success'>TAT analysis</H1>")
    output$OOO=renderText(input$OW)
    
    statistics_function=function()
    {
	mm=dbConnect(dbDriver("MySQL"),"clg","cluser","password","127.0.0.1")
	sql=paste0("select r1.sample_id, r1.result as receipt, r2.result as reported from result r1, result r2, result r3  where r1.examination_id=10003 and r2.examination_id=10008 and r3.examination_id=",
			input$OW,
			" and  r1.sample_id=r2.sample_id and r1.sample_id=r3.sample_id and (r1.result between
			'",input$date1,"'",
			" and ",
			"'",input$date2,"')"
			)

			result=dbSendQuery(mm, sql)
			data1=dbFetch(result, n = -1)
			data2=data.frame(
			                data1$sample_id,
					as.POSIXct(data1$receipt,format="%Y-%m-%dT%H:%M"),
					as.POSIXct(data1$reported,format="%Y-%m-%dT%H:%M"),
			                difftime(as.POSIXct(data1$reported,format="%Y-%m-%dT%H:%M"),as.POSIXct(data1$receipt,format="%Y-%m-%dT%H:%M"),units="hours")
					)
			dbDisconnect(mm)              
			colnames(data2)=c("S","input","output","difference")
			data3=data2[ !is.na(data2$S)  &   !is.na(data2$input) &  !is.na(data2$output) , ]
			return(data3)
    }
    
    #data <- read.csv("/tmp/data.csv")
    output$plot <- renderPlot(
                                {
                                  data3=statistics_function()
				  medianTAT=round(median(as.numeric(data3$difference)))
				  meanTAT=round(mean(as.numeric(data3$difference)))  
				  nTAT=nrow(data3)

					h=hist(
						as.numeric(data3$difference),
						breaks=round(as.numeric(max(data3$difference))),
						main=paste0("TAT analysis:"),
						xlab="Hours of TAT",
						ylab="Number of Samples",
						xlim=c(0,meanTAT*4)
						)
      
text(meanTAT*2,(max(h$density) * nrow(data3))/2,paste("Mean TAT in Hours: ",meanTAT),adj=0)      
text(meanTAT*2,(max(h$density) * nrow(data3))/2.3,paste("Median TAT in Hours: ",medianTAT),adj=0)      
text(meanTAT*2,(max(h$density) * nrow(data3))/2.6,paste("Location: ",input$OW, " , period: ",input$date1," - " , input$date2),adj=0)      
text(meanTAT*2,(max(h$density) * nrow(data3))/2.9,paste("n=",nrow(data3)),adj=0)      
                                }
                              )

}

shinyApp(ui = ui, server = server)
