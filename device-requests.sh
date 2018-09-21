#!/bin/tcsh 

set apiKey="<< Your API Key >>"
set deviceId="<< Your Device ID >>"   # Endpoint Name
set resourcePath="3200/0/5501"

# Temporary file to store notifications
set tempfile=lastNotification.tmp

# Clear notification Long Poll channel
echo -n "Clear the notification channel: "
curl -s -X DELETE \
  https://api.us-east-1.mbedcloud.com/v2/notification/pull \
  -H "authorization: Bearer ${apiKey}"
echo


while(1)
  # print date and time
  echo -n `date +"%I:%M:%S"`

  # Open the Long Poll Notification Channel, run as a child process
  (curl -s \
    -w ",STATUS_CODE(%{http_code})" \
    -X GET \
    https://api.us-east-1.mbedcloud.com/v2/notification/pull \
    -H "authorization: Bearer ${apiKey}" \
    --keepalive-time 600 \
    > ${tempfile}) >& /dev/null
  echo -n " NOTIFICATION_CHANNEL_OPENED,"
  
  # Create random async-id
  set asyncId=`uuidgen`

  echo -n `date +"%I:%M:%S"`
  echo -n " CALL_DEVICE_REQUEST,"
  # Call device request 
  set responseCode=`\
    curl -s -w "%{http_code}\n"\
      -d '{ "method": "GET", "uri": "/3200/0/5501"}' \
      "https://api.us-east-1.mbedcloud.com/v2/device-requests/${deviceId}?async-id=${asyncId}" \
      -H "authorization: Bearer ${apiKey}" \
      -H 'Content-Type: application/json'` 

  if(${responseCode} == 202) then     # 202 Accepted.
    # wait until notifications arrive; waiting for finishing child processes
    wait
    # Show notifications
    cat ${tempfile}
  else
    echo -n `date +"%I:%M:%S"`
    echo -n ",device_requests returned unexpected code ${responseCode},"
    # Delete notification Long Poll channel
    echo -n ",Close notification Long Poll channel."
    curl -s -X DELETE \
      https://api.us-east-1.mbedcloud.com/v2/notification/pull \
      -H "authorization: Bearer ${apiKey}"
  endif

  # delete temp file
  rm -f ${tempfile}

  # new line
  echo

  sleep 5
end

