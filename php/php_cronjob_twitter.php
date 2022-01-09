<?php
include('includes/db-connect.php');
include('includes/functions.php');

ini_set('display_errors', 1);

#loop over all nft projects and get twitter followers
$sql = "SELECT * FROM all_projects";
$results = mysqli_query($mysqli, $sql) or die("Datenbank Fehler " . mysqli_error($mysqli));

while($row = mysqli_fetch_assoc($results)) 
{
	$project_id = $row['id'];
	$twitter_follower_count = get_twitter_follower($row['twitter_name']);

	$stmt = $mysqli->prepare('INSERT INTO data VALUES (DEFAULT, ?, ?, ?)');
	$stmt->bind_param('isi', $project_id, date('Y-m-d H:i:s'), $twitter_follower_count);
	$stmt->execute();
	$stmt->close();

}

mysqli_close($mysqli);

?>