<?php

require_once('mysql_connect.php');

$query = "SELECT * FROM `users`";

$result = mysqli_query($conn, $query);

$output = [
	'success'=>false,
	'data'=>[]
];

if($result){ //did the query work?
	if(mysqli_num_rows($result)>0){  //did I get any results?
		$output['success'] = true;
		while( $row = mysqli_fetch_assoc($result)){ //get data
			// array_push($output['data'], $row); og push
			// $output['data'][count($output['data'])] = $row; CS push
			$output['data'][] = $row; //push in PHP now
		}		
	} else {
		//the query worked, but there was no data
	}
} else {
	//the query didn't work
}

$json_output = json_encode($output);

print($json_output);











?>