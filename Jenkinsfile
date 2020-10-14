pipeline {
    agent {
    label "slave"
    }
     stages {
    stage ('Sourcecode Management') {
       
       steps {
           git 'https://github.com/RanadevKranthi/testingjen.git'
           sh "mvn clean package"
           stash 'Source'
       }
     stage ("Docker image Building") {
        agent{
            label "docker-engine"
        }
        steps {
            unstash "Source"
            sh "dokcer image build . -t ranadev:${env.BUILD_ID}"   
           
       }

    }
    }

}
}
