<?php

require_once('mysql_connect.php');

// if(!empty($_GET['user_id'])){ //does user_id in the GET superglobal exist?
// 	$query = "SELECT * FROM `users` WHERE ID={$_GET['user_id']}";
// } else {
// 	$query = "SELECT ID, name, email, status FROM `users`";
// }

if(!empty($_GET['user_id'])){ //does user_id in the GET superglobal exist?
	$fields = ['*'];
	$whereClause = " WHERE ID={$_GET['user_id']}";
} else {
	$fields = ['ID', 'name', 'email', 'status'];
	$whereClause = '';
}
$fields = implode($fields,',');

$query = "SELECT $fields FROM `users` $whereClause";

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
		$output['error'] = 'no data';
	}
} else {
	//the query didn't work
	$output['error'] = 'query failed';
}

$json_output = json_encode($output);

print($json_output);











?>