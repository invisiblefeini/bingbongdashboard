<?php
include('includes/db-connect.php');
include('includes/functions.php');

ini_set('display_errors', 1);

# get entries from floor_price_head
$sql = "SELECT * FROM floor_price_head";

$results = mysqli_query($mysqli, $sql) or die("Datenbank Fehler " . mysqli_error($mysqli));

while($row = mysqli_fetch_assoc($results)) 
{
	$collection = $row['name'];
	$json = get_opensea_stats($collection);
	$floor_price = $json['stats']['floor_price'];

	$stmt = $mysqli->prepare('INSERT IGNORE INTO floor_price_values VALUES (?, ?, ?)');
	$stmt->bind_param('ssd', $collection, date('Y-m-d H:i:s'), $floor_price );
	$stmt->execute();
	$stmt->close();
	
	# sometimes opeansea bugs out, just throw away 0 values for clean grafana charts
	$stmt = $mysqli->prepare('delete FROM floor_price_values WHERE value = 0');
	$stmt->execute();
	$stmt->close();

}

mysqli_close($mysqli);

?>