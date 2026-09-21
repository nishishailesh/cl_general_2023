<?php
//$GLOBALS['nojunk']='';
require_once 'project_common.php';
require_once 'base/verify_login.php';
echo '      <link rel="stylesheet" href="project_common.css">
      <script src="project_common.js"></script>
      <script src="bootstrap/chart.min.js"></script>
      <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
';  
      
////////User code below/////////////////////
echo '<pre>';print_r($_POST);echo '</pre>';

?>


<script>
  
format_table('<?php  echo $_POST['data']     ?>')

function jsonToTable(jsonData) {
  // 1. Parse the JSON string if it isn't already an object/array
  const data = typeof jsonData === 'string' ? JSON.parse(jsonData) : jsonData;

  if (!data || data.length === 0) return '<p>No data available</p>';

  // 2. Extract column headers dynamically from the first object
  const columns = Object.keys(data[0]);

  // 3. Generate Table Headers
  const headerRow = columns
    .map(col => `<th>${col.charAt(0).toUpperCase() + col.slice(1)}</th>`)
    .join('');

  // 4. Generate Table Body Rows
  const bodyRows = data
    .map(row => {
      const cells = columns
        .map(col => `<td>${row[col] ?? ''}</td>`) // fallback to empty string if null/undefined
        .join('');
      return `<tr>${cells}</tr>`;
    })
    .join('');

  // 5. Assemble the complete HTML table
  return `
    <table class="table table-sm table-striped table-bordered">
      <thead>
        <tr>${headerRow}</tr>
      </thead>
      <tbody>
        ${bodyRows}
      </tbody>
    </table>
  `;
}



function format_table(data) {
  x='['+data.slice(1,-1)+']'
  y=JSON.parse(x);
  z=jsonToTable(y);
  document.body.innerHTML=z;
}

</script>
