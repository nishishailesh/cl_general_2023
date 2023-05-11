<?php

	echo '<style>
	.monitor_grid
	{
	display: grid;
	grid-template-areas:
	';
		for ($i=1;$i<=200;$i++)
		{
			if($i%10==1 && ($i/10)%2==0){echo '\'';}	
			echo 'a'.str_pad($i,3,0,STR_PAD_LEFT).' ';
			if($i%10==0 && ($i/10)%2==0){echo '\' ';}
		}
	echo ';}
	</style>';

echo '<div class="monitor_grid">';

	for ($i=1;$i<=200;$i++)
	{
		if($i%200==0)
		{
			$device_location=200;
			echo '<div style="grid-area: a'.$device_location.';">';
			echo $device_location;
			echo '</div>';			
		}
		else
		{
			$device_location=str_pad($i%200,3,'0',STR_PAD_LEFT);
			echo '<div style="grid-area: a'.$device_location.';">';
			echo $device_location;
			echo '</div>';
		}

	}

echo '</div>';


?>
