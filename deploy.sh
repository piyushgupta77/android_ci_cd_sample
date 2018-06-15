
curl \
if ( curl -o/dev/null -sfI "app/build/outputs/apk/debug/app-debug.apk" ); then
  echo "URL exists"
else
  echo "URL does not exist"
fi
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-app/build/outputs/apk/debug/app-debug.apk}" \
-H "X-HockeyAppToken: <hockey-app-token>" \
https://rink.hockeyapp.net/api/2/apps/<app-id>/app_versions/upload