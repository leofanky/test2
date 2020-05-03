
pipeline {
	agent any
	stages {
		stage('Copy artifact') {
			steps {
                copyArtifacts filter: 'multygo_master', fingerprintArtifacts: true, projectName: 'multygo/master', selector: lastSuccessful()
			}
		}
	
	}
}
