FROM python:alpine
# name of the ambient
#PS: alpine is usually lightweight

RUN mkdir ProjectApp
# RUN runs a command
# create a folder for the app

WORKDIR /ProjectApp
# Sets the folder as the working directory
# Cleaner and better practive than RUN cd /ProjectApp

COPY * .
# Copy everything from this folder to inside the image
# Use .dockerignore to ignore files (same as .gitignore)

CMD [ "python", "main.py" ]
# Run the application