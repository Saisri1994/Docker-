To create a Dockerfile for building an Nginx image, you can run the above Dockerfile. This Dockerfile assumes that you want a simple configuration with a custom HTML file served by Nginx.  


Explanation of the Dockerfile:


FROM nginx:latest:    Uses the official Nginx base image from Docker Hub.

RUN rm -rf /usr/share/nginx/html/*: Removes the default Nginx welcome page.

COPY index.html /usr/share/nginx/html/: Copies your custom index.html file to the Nginx HTML directory.

EXPOSE 80: Informs Docker that the container will listen on the specified network ports at runtime.

CMD ["nginx", "-g", "daemon off;"]: Specifies the command to run when the container starts. In this case, it runs Nginx in the foreground.


Make sure to place the Dockerfile in the same directory as your index.html file.
