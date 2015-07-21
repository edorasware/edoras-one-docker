# edoras-one-docker

- Add the edoras one .war file to ./deploy
- Add the license file to ./license

- Windows/OSX (needs Vagrant, Virtualbox, etc.): start with:
	vagrant up

- Linux: start with:
	docker build -t edorasone .
	docker run -p 8080:8080 -v $PWD/license/:/root/.edorasware edorasone

- Open Browser at http://localhost:8080

Optional:
- You can add your own one.properties to ./data (without default will be used)
- DB and content will be saved in ./data
- On Linux you have to add „-v ./data:/root/.edoras-one“ to the docker run command for that to work

Optional
- Tomcat logs will be saved in ./logs
- On Linux you have to add „-v ./logs:/usr/local/tomcat/logs“ to the docker run command for that to work
