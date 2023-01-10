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
	    stage('docker image'){
		    steps{
			    withCredentials([string(credentialsId: 'hub', variable: 'dockerh')]) {
    // some block
                       

			  sh 'docker build -t satya8127/week_9_assignment .'
				    sh 'docker login -u satya8127 -p $(dockerh)'
			    sh 'docker push satya8127/week_9_assignment'
			    }
		    }
	    }
	    
        
        
  
        
      
    }
}
