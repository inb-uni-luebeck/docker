This example illustrates how to transition from using python, jupyter notebooks, pyTorch and tensorflow directly to using them through a docker container. 

## What it does: 
 - It creates a docker image with GPU acceleration, cudnn, python, jupyter, pyTorch and tensorflow. 
 - It runs a container based on that image.
 - It mounts the current directory into the container to use it as the working directory. 
 - It mounts an additional directory (by default your home directory) into the container and provides it at "/data" in the container's filesystem. 
 - It runs a command inside the container ("python main.py" by default).

## How to use it: 
### Preparation:
1. Make the build script and the run scripts executable: 

    `chmod a+x build.sh run.sh run_jupyter.sh`

2. Create the docker image:

    `./build.sh`

    This will also give it the name "dl_workingdir".

    If you need additional tools or python packages make a new, empty Dockerfile in another folder and base it on the "dl_workingdir" image. E.g. for the numpy package the Dockerfile would look like this:
    
        FROM dl_workingdir

        RUN pip install numpy
    
    (assuming you already built the dl_workingdir image above atleast once)

### Execution:

 - Run "main.py" inside the docker container: 

    `./run.sh`

   To run your preexisting project inside the container just change the name of the file/command to run in the script `run.sh`. (Be aware though that the project must be located in the current directory or a subdirectory, since only the current directory is mounted inside the container)

   If you are working with a dataset that is stored outside the current directory, you can replace `$HOME` with that directory in the `run.sh` script, so the dataset will be available inside the container under `/data`.

 - Alternatively you can run jupyter notebooks inside the docker container:

    `./run_jupyter.sh`

   Apart from running a different command, this will also make the http server of the jupyter notebook accessible on the host port `8888` by passing connections on this port on to the container.

### Debugging:

The Debugger has two options. Select "Docker: Python - General" to start debugging the project from its main file. Select "Docker: Python - Current" to start debugging the currently in the editor selected file.
More configurations can be added or present configurations can be changed in the ./vscode/launch.json and ./vscode/tasks.json.
