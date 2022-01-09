<?php

function get_twitter_follower($twitter_name)
{
	$twitter_follower_count = 0;

	#twitter bearer token needed, just sign up here: https://developer.twitter.com/en/portal/dashboard
	# replace XXX with your token
	$bearer_token = "XXX";

	#get twitter follower count
	$authorization = "Authorization: Bearer " . $bearer_token;
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json', $authorization));
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_URL, "https://api.twitter.com/2/users/by/username/".$twitter_name."?user.fields=public_metrics");
	$result = curl_exec($ch);
	curl_close($ch);
	if (is_string($result)) {
		$twitter_follower_count = json_decode($result)->data->public_metrics->followers_count;
	}
	
	return $twitter_follower_count;
}

function get_opensea_stats($collection_name)
{
	$url = 'https://api.opensea.io/api/v1/collection/'.$collection_name.'/stats?format=json';

	$json = file_get_contents($url);
	$json = json_decode($json, true);
	
	return $json;
}