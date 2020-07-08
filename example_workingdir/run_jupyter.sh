docker run --gpus all --name dl --rm -p 8888:8888 -v $(pwd):/workingdir -v $HOME:/data dl_workingdir jupyter notebook --ip=0.0.0.0 --no-browser --allow-root

