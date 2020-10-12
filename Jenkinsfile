pipeline {
    agent {
        label "slave"
    }
stages {
    stage ('Sourcecode Management') {
       
       steps {
           git 'https://github.com/RanadevKranthi/testingjen.git'
           sh "mvn clean package"
       }
       post{
           success{
               agent "Docker-engine"
           steps {
              sh "dokcer image build . -t ranadev:${env.BUILD_ID}"
           }    
           }
       }

    }
    }

}


