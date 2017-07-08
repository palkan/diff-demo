pipeline {
  agent any
  stages {
    stage('Setup') {
      steps {
        sh 'bundle --path "/tmp/gems"'
      }
    }
    stage('Build') {
      steps {
        parallel(
          "Job 1": {
            sh 'bundle exec rspec spec/run_spec.rb'
          },
          "Job 2": {
            sh 'bundle exec rspec spec/run2_spec.rb'
          }
        )
      }
    }
    stage('Coveralls Webhook') {
      steps {
        sh 'printenv'
        sh 'curl -k $COVERALLS_ENDPOINT/webhook?repo_token=$COVERALLS_REPO_TOKEN -d "payload[build_num]=$BUILD_NUMBER&payload[status]=done"'
      }
    }
  }
  environment {
    COVERALLS_SERVICE_NAME = 'jenkins-enterprise'
    COVERALLS_ENDPOINT = 'https://enterprise-demo-2.coveralls.io'
    COVERALLS_REPO_TOKEN = 'k80tTMALlmaQOlMs23SvZDavemORnsiSi'
    CI = 'true'
    CI_BRANCH = '$BRANCH_NAME'
    COVERALLS_PARALLEL = 'true'
    CI_BUILD_NUMBER = '$BUILD_NUMBER'
  }
}
