pipeline {
	agent {label 'master'} //where we are executing this script
		
		stages {
			stage('Cleanws') {
				steps {
					 cleanWs()
					}
			}
			
			stage('clone the source code') {
				steps {
					echo 'In GIT SCM Stage'
				
				    git credentialsId: 'Git-credentials', url: 'https://github.com/hariharanjenkin/azure_devops.git',branch: 'main'
	  
				}
			}
			
			stage('valdiate if the file cloned properly') {
				steps {
					sh '''
                        pwd
                        ls  
                     '''
				}
			}

            stage('Execute the Terraform into azure') {
				steps {
					sh '''
                        cd Terraform
                        ls
                        echo 'terraform init'
                        echo 'terraform plan' 
                     '''
				}
			}
			
		}
}