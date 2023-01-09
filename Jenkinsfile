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
			stage("sonar analysis"){
        steps{
         withSonarQubeEnv(installationName: 'sonar', credentialsId: 'sonardemo'){
              bat ' mvn -f Week_9_Assignment/pom.xml clean verify sonar:sonar'
              }
	}
			}
        
   

 
  
  
        stage('Clean') {
            steps {
                sh 'mvn -f pom.xml clean install'
                echo 'Cleaning..'
            }
        }
	    stage('docker image'){
		    steps{
			  sh 'docker build -t satya8127/week_9_assignment .'
			    sh 'docker push -t satya8127/week_9_assignment'
		    }
	    }
	    
        
        
  
        
      
    }
}
