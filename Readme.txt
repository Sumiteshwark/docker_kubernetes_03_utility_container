******** UTILITY CONTAINER (From lecture 87 to 93) ********* 

-> docker - Applications containers - (Environment, <Your App>) - docker run myapp - Runs CMD and starts app.
-> Utility containers - Environment - docker run mynpm init - Executes / Appends custom command.

-> docker run -it -d node
-> exec commands help us to run specific commands inside docker container while it is running.(docker exec -it <container_name> npm init)

** Example
1> create Dockerfile (having FROM node:14-alpine and WORKDIR /app)
2> docker build -t node-util .
3> docker run -it -v <main_file_absolute_path:/app> node-util npm init (Bcz of bind mount this will create package.json in local where path is given.)
4> Here we are using npm in each command, so for this we can use (ENTRYPOINT ["npm"]) in Dockerfile. So, now we can directly run (docker run -it -v <main_file_absolute_path> node-util init)
5> To install express, we can run
    -> docker run -it -v <main_file_absolute_path:/app> node-util install express --save
    -> i.e (docker run -it -v /home/rebooters/Desktop/Docker_three:/app node-util install express --save) -> This will install express in my local in specified folder.
6> To make command easier , we can create compose file and then run
    -> docker-compose run --rm npm init (we can use run to run any one service at a time. docker-compose up automatically remove container when they stop but in docker-compose run, we have to add --rm manually.)