FROM continuumio/anaconda3:latest

# Install Jupyter Notebook (already included in the base image, but added for clarity)
RUN conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install -y jupyter opencv

# Set the working directory
WORKDIR /workspace

# Expose the Jupyter Notebook port
EXPOSE 8888

# Command to start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--notebook-dir=/workspace/notebooks"]
