pipeline {
    agent any
    
    parameters {
        choice(
            name: 'ENV',
            choices: ['dev', 'prod'],
            description: 'Окружение для деплоя'
        )
    }
    
    stages {
        stage('Deploy') {
            steps {
                echo "Deploying to ${params.ENV}"
                
                sshPublisher(
					 publishers: [
						 sshPublisherDesc(
							 configName: "Prod",
							 transfers: [
								sshTransfer(sourceFiles: "main.py")
							 ]
						 )
					 ]
                )
            }
        }
        
        stage('Clean') {
            steps {
                cleanWs() 
            }
        }
    }
}