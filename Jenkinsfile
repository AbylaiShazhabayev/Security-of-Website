pipeline{
    agent any
    environment{
        staging_server="54.146.181.87"
    }
    
    stages {
    stage('Prepare') {
      steps {
        echo "--------------------Prepare Stage---------------------"
        sh "rm -rf PHPUnit"
        sh "git clone "
        sh "phpunit --version"
        sh "whoami"
        sh "su -"
        sh "whoami"
      }
    }
    stage('Test') {
      steps {
        echo "--------------------Test Stage---------------------"
        sh "phpunit --bootstrap autoload.php --log-junit report.xml EmailTest"
        junit '*.xml'
        
      }
    }
     
    stages{
        stage('Deploy to Remote'){
            steps{
                sh '''
    
                    for fileName in `find ${WORKSPACE} -type f -mmin -10 | grep -v ".git" | grep -v "Jenkinsfile"`
                    do
                        fil=$(echo ${fileName} | sed 's/'"${JOB_NAME}"'/ /' | awk {'print $2'})
                        scp -r ${WORKSPACE}${fil} root@${staging_server}:/var/www/html/mbaquatech${fil}
                    done
                '''
            }
        }
    }
}
