<#
Simple script that uses the Invoke-RestMethod to Call the Facebook Graph API


Page for reference is :https://www.facebook.com/Knoxcouncil/
Facebook Graph API - https://developers.facebook.com/docs/graph-api/reference/v3.2/insights

The below code constructs the following URI:
https://graph.facebook.com/v3.2/12345/insights/page_engaged_users?access_tokenabcde

Page engagement is the name of the game -
page_engaged_users:
Description: The number of people who engaged with your Page. Engagement includes any click.
Values for 'period' day, week, days_28

#>

$access_token = "abcde"
$object_id ="12345"
$API_URL = "https://graph.facebook.com/v3.2/"
$endpoint = "/insights"
$metric = "/page_engaged_users"

$url = $API_URL + $object_id +$endpoint + $metric + '?access_token' + $access_token

Invoke-RestMethod -Method 'GET'-Uri $url | Format-Table

