pipeline {
    agent any
    
    tools{
        maven "MAVEN_HOME"
    }
   

    stages {
	
		stage("Checkout code"){
			steps
			{
				checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/satya8127/week_9_Assignment.git']])
				echo 'Check Out'
			}
        
   

 
  
  }
        
        stage('Clean') {
            steps {
                sh 'mvn -f pom.xml clean install'
                echo 'Cleaning..'
            }
        }
        
        
  
        
      
    }
}
