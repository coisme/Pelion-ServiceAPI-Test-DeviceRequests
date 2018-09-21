# Perion-API-Test-2
Pull notification test script.

# Prerequisite

* Pelion Account
* A device which runs firmware provided by [Quick Start](https://cloud.mbed.com/quick-start). Get device id (endpoint name).
* tcsh

Replace the value of `apiKey` and `deviceId` in `device-requests.sh`.

# Run

Run the script on your terminal.

### Sample Output


```
Clear the notification channel: REMOVED
01:06:02 NOTIFICATION_CHANNEL_OPENED,01:06:33 CALL_DEVICE_REQUEST,,STATUS_CODE(204)
01:06:39 NOTIFICATION_CHANNEL_OPENED,01:06:41 CALL_DEVICE_REQUEST,{"notifications":[{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI2OQ==","max-age":60}]},STATUS_CODE(200)
01:06:46 NOTIFICATION_CHANNEL_OPENED,01:06:47 CALL_DEVICE_REQUEST,{"notifications":[{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3MA==","max-age":60}],"async-responses":[{"id":"D3D8B52A-D962-471C-B4A0-9FD834F42FC0","status":200,"payload":"MjI2OQ==","ct":"text/plain","max-age":60}]},STATUS_CODE(200)
01:06:53 NOTIFICATION_CHANNEL_OPENED,01:06:54 CALL_DEVICE_REQUEST,{"notifications":[{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3MQ==","max-age":60}],"async-responses":[{"id":"AFC6E93A-BF78-48B1-845F-64C294FD0E53","status":200,"payload":"MjI3MA==","ct":"text/plain","max-age":60}]},STATUS_CODE(200)
01:07:00 NOTIFICATION_CHANNEL_OPENED,01:07:01 CALL_DEVICE_REQUEST,{"notifications":[{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3Mg==","max-age":60},{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3Mw==","max-age":60}],"async-responses":[{"id":"C550F7D4-F336-44A4-93B5-70005DFB3646","status":200,"payload":"MjI3MQ==","ct":"text/plain","max-age":60}]},STATUS_CODE(200)
01:07:07 NOTIFICATION_CHANNEL_OPENED,01:07:08 CALL_DEVICE_REQUEST,{"notifications":[{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3NA==","max-age":60}],"async-responses":[{"id":"18E03DD1-5267-4C59-92AA-DD8494A7CD39","status":200,"payload":"MjI3Mw==","ct":"text/plain","max-age":60}]},STATUS_CODE(200)
01:07:13 NOTIFICATION_CHANNEL_OPENED,01:07:14 CALL_DEVICE_REQUEST,{"notifications":[{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3NQ==","max-age":60}],"async-responses":[{"id":"935E5416-F99F-4124-A6DE-AB59BE0A1FC3","status":200,"payload":"MjI3NA==","ct":"text/plain","max-age":60}]},STATUS_CODE(200)
01:07:20 NOTIFICATION_CHANNEL_OPENED,01:07:21 CALL_DEVICE_REQUEST,{"notifications":[{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3Ng==","max-age":60},{"ep":"0165efa1a2df0000000000010010024f","path":"/3200/0/5501","ct":"text/plain","payload":"MjI3Nw==","max-age":60}],"async-responses":[{"id":"A8BCD012-1783-4A1A-8C33-A4C926A2DD2D","status":200,"payload":"MjI3NQ==","ct":"text/plain","max-age":60}]},STATUS_CODE(200)
```

# Reference

* cURL Man - https://curl.haxx.se/docs/manpage.html
