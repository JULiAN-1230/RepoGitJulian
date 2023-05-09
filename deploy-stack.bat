set %Instance-Name="Ubuntu"
set %Accountid=094375575646
aws cloudformation deploy --stack-name UbuntuServer20 --template-file main.yml --parameter-overrides "Instance-Name=%Instance-name%"