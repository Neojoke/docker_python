FROM python:2.7-slim

# set the working directory to /app
WORKDIR /app

#copy the current directory contents into container at /app
ADD . /app

# install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 availabel to the world outside this container
EXPOSE 80

#define environment variable
ENV NAME World

#RUN app.py when the container launches
CMD ["python", "app.py"]
