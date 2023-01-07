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
       
              
  }

 
  
  }
        
        stage('Clean') {
            steps {
                bat 'mvn -f Week_9_Assignment/pom.xml clean'
                echo 'Cleaning..'
            }
        }
        stage('Compile') {
            steps {
                bat 'mvn -f Week_9_Assignment/pom.xml compile'
                echo 'Compiling..'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn -f Week_9_Assignment/pom.xml test'
                echo 'Testing..'
            }
        }
        stage('Packaging') {
            steps {
                bat 'mvn -f Week_9_Assignment/pom.xml package'
                echo 'Packageing..'
            }
        }
        stage('Install') {
            steps {
                bat 'mvn -f Week_9_Assignment/pom.xml install'
                echo 'Installing..'
            }
        }
        
  
        
      
    }
}
