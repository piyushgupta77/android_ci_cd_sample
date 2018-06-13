
$AndroidAppId=${1:-3625d932a8864fcbb70d90e27c9e373f}
HockeyAppToken=8bcc6c28760b411aae652638cae2e274

curl \
-w 'running curl script'
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-app/build/outputs/apk/efica.apk}" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload