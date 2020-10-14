pipeline {
    agent {
        label any
    }
stages {
    stage ('Sourcecode Management') {
       
       steps {
           git 'https://github.com/RanadevKranthi/testingjen.git'
           sh "mvn clean package"
           stash 'Source'
       }
       post{
           success{
               agent {
              label "Docker-engine"     
               }
           steps {
              unstash 'Source'
              sh "dokcer image build . -t ranadev:${env.BUILD_ID}"
           }    
           }
       }

    }
    }

}

