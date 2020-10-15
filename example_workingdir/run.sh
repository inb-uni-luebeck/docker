docker run --gpus all \
    --name dl \
    --rm -v $(pwd):/workingdir -v $HOME:/data \
    --user $(id -u):$(id -g) \
    dl_workingdir python main.py
