// Powered by Infostretch 

timestamps {

node () {

	stage ('test2 - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'leofanky-github-token', url: 'https://github.com/leofanky/test2.git']]]) 
	}
	stage ('test2 - Build') {
 	
// Unable to convert a build step referring to "hudson.plugins.copyartifact.CopyArtifact". Please verify and convert manually if required.
// Unable to convert a build step referring to "com.cloudbees.dockerpublish.DockerBuilder". Please verify and convert manually if required. 
	}
}
}