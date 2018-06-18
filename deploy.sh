
curl \
-F "status=2" \
-F "notify=1" \
-F "ipa=@${2:-/home/circleci/project/outputs/outputs/apk/debug/efica.apk}" \
-H "X-HockeyAppToken: 8d419555305146d99f4ff38f3e122572" \
https://rink.hockeyapp.net/api/2/apps/8bcc6c28760b411aae652638cae2e274/app_versions/upload