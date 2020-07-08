This repository contains information and examples how to get started using docker for deep learning. 

Advantages of using a docker container as runtime:
 - Portability: You can easily run the same environment on a different machine. The whole toolset is defined in the Dockerfile and does not have dependencies regarding software installed on the host system.
 - Minimal software dependencies: The container is only restricted by the Nvidia driver version installed on the host (or more precisely: the CUDA version provided by the installed Nvidia driver). 
 - Easier host maintenance: The machine only needs to provide an up-to-date docker installation with the Nvidia Container Toolkit and CUDA-enabled Nvidia graphics drivers installed.

Check out the README.md of the examples.