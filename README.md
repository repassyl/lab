# Jupter Lab

Run a Jupyter Lab in Docker container.

## Example 1

    docker run \
        --name lab \
        --rm \
        -e JUPYTER_ENABLE_LAB=yes \
        -e NB_USER=$USER \
        --user root \
        --network host \
        -e NB_UID=$UID \
        -e CHOWN_HOME=yes \
        -e CHOWN_HOME_OPTS='-R' \
        -e GRANT_SUDO=yes \
        -v "$PWD":/home/$USER/work/ \
        repassyl/lab

## Example 2

    docker run \
        --name lab \
        --rm \
        -e JUPYTER_ENABLE_LAB=yes \
        -e NB_USER=$USER \
        --user root \
        --network host \
        -e NB_UID=$UID \
        -e CHOWN_HOME=yes \
        -e CHOWN_HOME_OPTS='-R' \
        -e GRANT_SUDO=yes \
        -v "$PWD":/home/$USER/work/ \
        -v "$PWD/install/jupyter_notebook_config.json":/home/$USER/.jupyter/jupyter_notebook_config.json \
        -v "$PWD"/install/ssh/:/home/$USER/.ssh/ \
        -v "$PWD"/install/gitconfig:/home/$USER/.gitconfig \
        repassyl/lab

## hub.docker.com

https://cloud.docker.com/repository/docker/repassyl/lab

## More info

https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html#docker-options
