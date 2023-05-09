set Tinstancia=t2.small
aws cloudformation deploy --stack-name WordPressPerez --template-file main.yml --parameter-override InstanceType=%Tinstancia%

IF %errorlevel% neq 0 (
    echo Hubo un error
) else (
    aws cloudformation list-exports --query "Exports[?Name == 'ServerPublicIp']"    
)