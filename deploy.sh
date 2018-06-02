
$AndroidAppId_Dev=${1:-539914e75ca74b0789d2bc108635cdb5}
HockeyAppToken=3625d932a8864fcbb70d90e27c9e373f

curl \
-w 'running curl script'
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-app/build/outputs/apk/app-debug.apk}" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId_Dev/app_versions/upload