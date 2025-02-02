# Use the official Jupyter base image
FROM jupyter/base-notebook:latest

# Set the working directory
WORKDIR /home/jovyan

# Copy the notebook into the container
COPY notebook.ipynb /home/jovyan/

# Expose the notebook port (default is 8888)
EXPOSE 8888

# Start Jupyter Notebook server
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.ip='0.0.0.0'", "--NotebookApp.port=8888"]
