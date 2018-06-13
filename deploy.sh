
$AndroidAppId=${1:-3625d932a8864fcbb70d90e27c9e373f}
HockeyAppToken=fa73392bec644ec7aa2340d7d95a50fc

curl \
-w 'running curl script'
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-app/build/outputs/apk/efica.apk}" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload