pipeline {
  environment {
    registry = "leosdocker420/test2"
    registryCredential = 'docker'
    dockerImage = ''
  }
  agent any
  stages {    
    stage('Copying artifact') {
      steps{
	copyArtifacts filter: 'multygo_master', fingerprintArtifacts: true, projectName: 'multygo/master', selector: lastSuccessful()
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploying image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
