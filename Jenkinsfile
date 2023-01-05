pipeline {
    agent any
    
    tools{
        maven "MAVEN_HOME"
    }
   

    stages {
	
		stage("Checkout code"){
			steps
			{
				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '62155eed-4a99-4fe1-b592-23d2501c45db', url: 'https://git.nagarro.com/GITG00641/Java/satyakumar-tattukolla.git']]])
				echo 'Check Out'
			}
        }
        stage("sonar analysis"){
        steps{
         withSonarQubeEnv(installationName: 'sonarproduction', credentialsId: 'sonardemo'){
              bat ' mvn -f Week_9_Assignment/pom.xml clean verify sonar:sonar'
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
