pipeline {
    agent any

    stages {
        stage('Cloning the GitHub repo') {
            steps {
                script {
                
                    deleteDir()
                    //echo "Cloning this ${params.GithubURL} into ${params.Environment}"
                    def cloneDir = "C:/ProgramData/Jenkins/.jenkins/workspace/nodejs/jenkins_nodejs"
                    bat "git clone https://github.com/sharsh15/jenkins_nodejs.git ${cloneDir}"
                }
            }
        }

        stage('Building the Node.js application') {
            steps {
                script {
                    def repoDir = "C:/ProgramData/Jenkins/.jenkins/workspace/nodejs/jenkins_nodejs"
                    bat "cd ${repoDir} && npm install"
                    bat "cd ${repoDir} && npm init -y"  // Use npm init -y to skip prompts
                    bat "cd ${repoDir} && npm run build"
                }
            }
        }
        
        stage('Building dockerfile') {
            steps{
                script{
                    def repoDir = "C:/ProgramData/Jenkins/.jenkins/workspace/nodejs/jenkins_nodejs"
                    bat "cd ${repoDir} && docker build -t my-nodejs-app ."
                }
            }
        }

        stage('Running the Node.js project') {
            steps {
                script {
                    def repoDir = "C:/ProgramData/Jenkins/.jenkins/workspace/nodejs/jenkins_nodejs"
                    bat "cd ${repoDir} && node index.js"
                    echo "Open the website URL"
                }
            }
        }
    }
}
