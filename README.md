![](https://github.com/invisiblefeini/bingbongdashboard/blob/main/images/bannersm.jpg)

# BingBong Dashboard
Build a dashboard to track twitter follower and opensea floor prices of your favorite nft projects

# Requirements
- MySQL Database or similar
- PHP Server with Cronjobs
- Grafana

# Get started
Setup a MySQL database and import mysql/db.sql including sample entries for InvisibleFriends on Twitter and MoodRoller/Slimhoods on OpenSea.

Put all the files from the php/ folder to your webserver.

Edit php\includes\vars.php and enter your database credentials.
Edit php\includes\functions.php and enter your Bearer Token for the Twitter API. Details in the comments.

Setup a cronjob on the files php/php_cronjob_opensea.php and php/php_cronjob_twitter.php.

Install Grafana (i installed it on a raspberry pi) and add your DB in Configuration->Data sources.

Launch Grafana and import the dashboard i prepared for you grafana\Grafana_NFTDashboard.json.

You should be ready to go now! BING BONG

PS: Watch out for cucumbers.

Discord: feini#2769
