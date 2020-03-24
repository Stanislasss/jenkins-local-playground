docker build . -t jenkins-test

docker run -p 8080:8080 -p 50000:50000 `
    -v C:/Projects/jenkins-pipeline-test/jenkins_home:/var/jenkins_home `
    -v C:/Projects:/var/projects `
    -v /var/run/docker.sock:/var/run/docker.sock `
    --name jenkins-test jenkins-test