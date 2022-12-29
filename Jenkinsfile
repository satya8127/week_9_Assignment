pipeline{
    
    tools{
        maven "mvn"
    }
    environment {
        PATH = "$PATH:C:/Program Files/apache-maven-3.6.3/bin"
    }
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/satya8127/week_9_Assignment'
            }
         }        
       stage('Build'){
            steps{
                sh 'mvn clean package'
            }
         }
        stage('SonarQube analysis') {
//    def scannerHome = tool 'SonarScanner 4.0';
        steps{
        withSonarQubeEnv('sonar') { 
        // If you have configured more than one global server connection, you can specify its name
//      bat "${scannerHome}/bin/sonar-scanner"
        bat "mvn sonar:sonar"
    }
        }
        }
       
    }
}

