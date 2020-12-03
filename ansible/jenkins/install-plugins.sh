filename=/tmp/plugins.txt
lines=$(cat $filename)
ADMIN_PASSWORD=$(cat /var/lib/jenkins/secrets/initialAdminPassword)
for line in $lines;
do
  java -jar /usr/local/bin/jenkins-cli.jar -s http://localhost:8080/ -auth admin:$ADMIN_PASSWORD install-plugin "$line"
done

