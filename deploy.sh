
$AndroidAppId=8bcc6c28760b411aae652638cae2e274
HockeyAppToken=8d419555305146d99f4ff38f3e122572

curl \
-w 'running curl script'
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-app/build/outputs/apk/app-debug.apk}" \
-H "X-HockeyAppToken: 8d419555305146d99f4ff38f3e122572" \
https://rink.hockeyapp.net/api/2/apps/8bcc6c28760b411aae652638cae2e274/app_versions/upload