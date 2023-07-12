<?php
$x = <<<data
<table border="1">
<tr>
	<td>10011|r</td>
	<td colspan="4">10012|r</td>
	<td>10011|r</td>
</tr>
<tr>
	<td>sample_id</td><td>sample_id_value</td>
	<td>1001|n</td><td>1001|r</td>
	<td>1001|n</td><td>1001|r</td>
</tr>
</table>
data;

echo $x;

$dom = new DOMDocument();
$dom->preserveWhiteSpace = false;
$dom->loadHTML($x);

$td = $dom->getElementsByTagName ("td");
foreach ($td as $node)
{
	echo 'Name='.$node->nodeName.' Value='.$node->nodeValue.' Path='.$node->getNodePath().'<br>';
	$node->nodeValue='xyz';
}

echo $dom->saveHTML();




?>
