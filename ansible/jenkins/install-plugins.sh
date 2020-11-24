filename=/tmp/plugins.txt
lines=$(cat $filename)
for line in $lines;
do
  java -jar /usr/local/bin/jenkins-cli.jar -s http://localhost:8080/ install-plugin "$line"
done

