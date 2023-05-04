<style>

.main_left
{
  display: grid;
  grid-template-columns: 	          
                                      [vr01-start] 1fr [vr01-end vr02-start] 1fr [vr02-end vr03-start] 1fr [vr03-end vr04-start] 1fr [vr04-end vr05-start] 1fr 
							[vr05-end vr06-start] 1fr [vr06-end vr07-start] 1fr [vr07-end vr08-start] 1fr [vr08-end vr09-start] 1fr [vr09-end vr10-start] 1fr
							[vr10-end vr11-start] 1fr [vr11-end vr12-start] 1fr [vr12-end vr13-start] 1fr [vr13-end vr14-start] 1fr [vr14-end vr15-start] 1fr 
							[vr15-end vr16-start] 1fr [vr16-end vr17-start] 1fr [vr17-end vr18-start] 1fr [vr18-end vr19-start] 1fr [vr19-end vr20-start] 1fr 
							[vr20-end] ;
							
							
  grid-template-rows: 
                                      [hr01-start] 1fr [hr01-end hr02-start] 1fr [hr02-end hr03-start] 1fr [hr03-end hr04-start] 1fr [hr04-end hr05-start] 1fr 
							[hr05-end hr06-start] 1fr [hr06-end hr07-start] 1fr [hr07-end hr08-start] 1fr [hr08-end hr09-start] 1fr [hr09-end hr10-start] 1fr
							[hr10-end hr11-start] 1fr [hr11-end hr12-start] 1fr [hr12-end hr13-start] 1fr [hr13-end hr14-start] 1fr [hr14-end hr15-start] 1fr 
							[hr15-end hr16-start] 1fr [hr16-end hr17-start] 1fr [hr17-end hr18-start] 1fr [hr18-end hr19-start] 1fr [hr19-end hr20-start] 1fr 
							[hr20-end] ;
							
  
}


.one
{
	display: grid;
	grid-template-areas:
	
		'a001 a002 a003 a004 a005 a006'
		'a011 a012 a013 a014 a015 a016';
}

div{
	  border: solid 0.3px;
}

.vr01 {
  grid-area: a001;
}
.vr02 {
  grid-area: a002;
}
.vr03 {
  grid-area: a003;
}
.vr04 {
  grid-area: a004;
}

.vr05 {
  grid-area: a014;
}
.vr06 {
  grid-area: a012;
}

</style>


<div class=one>
	
	<div class=vr01>One</div>
	<div class=vr02>Two</div>
	<div class=vr03>Three</div>
	<div class=vr04>_____________Fooooo</div>
	<div class=vr04>Fivevvvvvv</div>
	<div class=vr06>Six</div>

</div>

<?php
for ($i=1;$i<=200;$i++)
{
	if($i%10==1 && ($i/10)%2==0){echo '\'';}	
	echo 'a'.str_pad($i,3,0,STR_PAD_LEFT).' ';
	if($i%10==0 && ($i/10)%2==0){echo '\'<br>';}
}
?>
