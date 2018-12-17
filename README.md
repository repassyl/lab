# Jupter Lab

You can run a Jupyter Lab in Docker container.

## Example

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
