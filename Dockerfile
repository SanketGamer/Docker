
What is a Dockerfile
If you want to create an image from your own code, that you can push to dockerhub, you need to create a Dockerfile for your application.
A Dockerfile is a text document that contains all the commands a user could call on the command line to create an image.

How to write a dockerfile
A dockerfile has 2 parts
Base image
Bunch of commands that you run on the base image (to install dependencies like Node.js)

Common commands
WORKDIR: Sets the working directory for any RUN, CMD, ENTRYPOINT, COPYinstructions that follow it.
RUN: Executes any commands in a new layer on top of the current image and commits the results.
CMD: Provides defaults for executing a container. There can only be one CMD instruction in a Dockerfile.
EXPOSE: Informs Docker that the container listens on the specified network ports at runtime.
ENV: Sets the environment variable.
COPY: Allow files from the Docker host to be added to the Docker image

 Passing in env variables
docker run -p 3000:3000 -e DATABASE_URL="" image_name
The -e argument let’s you send in environment variables to your node.js app

More commands
docker kill - to kill a container
docker exec - to exectue a command inside a container
 
Examples
List all contents of a container folder
docker exec <container_name_or_id> ls /path/to/directory

Running an Interactive Shell
docker exec -it <container_name_or_id> /bin/bash
