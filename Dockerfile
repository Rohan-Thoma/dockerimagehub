#Use the official pytho image from docker hub
FROM python:3.10-slim

#Set the working directory
WORKDIR /app

#Copy the current directory contents into the container at /app
COPY . /app

#Install any needed packages specified in the requirement.txt\
RUN pip -r requirements.txt 

#Make the port 5000 available to the world outside the container
EXPOSE 5000 

#run app.py when the container launches
CMD ['python',"app.py"]
