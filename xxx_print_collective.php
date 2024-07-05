<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';

	////////User code below/////////////////////
require_once('tcpdf/tcpdf.php');
require_once('tcpdf/tcpdf_barcodes_2d.php');

$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
//echo '<pre>';print_r($_POST);echo '</pre>';

$sql='select 	sample_id,
				examination.examination_id,
				examination.name,
				examination.sample_requirement,
				result.result,
				result.recording_time
				
			from 
				result,examination 
			
			where 
				sample_id in ('.substr($_POST['list_of_id'],0,-1).') and 
				result.examination_id=examination.examination_id
			order by
				examination.name,examination.examination_id,sample_id';
//echo $sql;
if(!$result=run_query($link,$GLOBALS['database'],$sql))
{
	 echo '<h1>Problem</h1>';
}
 else
 {
	 //echo '<h1>Success</h1>';
 }


echo '<button class="btn btn-success" type=button onclick="tableToCSV()">Download</button>';

display_sql_result_data($result,$show_hide='yes')

?>

<script type="text/javascript">
		function tableToCSV() {

			// Variable to store the final csv data
			let csv_data = [];

			// Get each row data
			let rows = document.getElementsByTagName('tr');
			for (let i = 0; i < rows.length; i++) {

				// Get each column data
				let cols = rows[i].querySelectorAll('td,th');

				// Stores each csv row data
				let csvrow = [];
				for (let j = 0; j < cols.length; j++) {

					// Get the text data of each cell
					// of a row and push it to csvrow
					csvrow.push(cols[j].innerHTML);
				}

				// Combine each column value with comma
				csv_data.push(csvrow.join(","));
			}

			// Combine each row data with new line character
			csv_data = csv_data.join('\n');

			// Call this function to download csv file 
			downloadCSVFile(csv_data);

		}

		function downloadCSVFile(csv_data) {

			// Create CSV file object and feed
			// our csv_data into it
			CSVFile = new Blob([csv_data], {
				type: "text/csv"
			});

			// Create to temporary link to initiate
			// download process
			let temp_link = document.createElement('a');

			// Download csv file
			temp_link.download = "GfG.csv";
			let url = window.URL.createObjectURL(CSVFile);
			temp_link.href = url;

			// This link should not be displayed
			temp_link.style.display = "none";
			document.body.appendChild(temp_link);

			// Automatically click the link to
			// trigger download
			temp_link.click();
			document.body.removeChild(temp_link);
		}
</script>
