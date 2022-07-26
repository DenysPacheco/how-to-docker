FROM python:alpine
# name of the ambient
#PS: alpine is usually lightweight

RUN mkdir ProjectApp
# RUN runs a command
# create a folder for the app

WORKDIR /ProjectApp
# Sets the folder as the working directory
# Cleaner and better practive than RUN cd /ProjectApp

COPY src/ ./
# Copy everything from the src/ folder to inside the image on ProjectApp/
# Use .dockerignore to ignore files (same as .gitignore)

CMD [ "python", "main.py" ]
# Run the application
