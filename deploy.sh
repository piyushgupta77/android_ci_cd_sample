
$AndroidAppId=${1:-9a05641eacbc4be0907078e7eb805c3e}
HockeyAppToken=e2273d142743404c99ca72626d10f89c

curl \
-w 'running curl script'
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-app/build/outputs/apk/app-debug.apk}" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload