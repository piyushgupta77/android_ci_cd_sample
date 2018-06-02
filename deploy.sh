
$AndroidAppId_Dev=${1:-3625d932a8864fcbb70d90e27c9e373f}
HockeyAppToken=e2273d142743404c99ca72626d10f89c

curl \
-w 'running curl script'
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-app/build/outputs/apk/app-debug.apk}" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId_Dev/app_versions/upload