[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# metaflow-docker
Just [Metaflow](https://github.com/Netflix/metaflow) running in a Docker container. Built on the `jupyter/pyspark-notebook` image.

This repository is mainly useful if you are running on Windows, as Metaflow is currently unsupported. 

## Installation and setup

Three options to use the code:

1) Build and run the Docker container. From the repository root:

`docker build -t metaflow-docker .`
`docker run -it -p 8888:8888 -v ./:/working metaflow-docker`

This mounts the repository root folder as `/working`. Port 8888 is exposed for Jupyter Lab - use token `local_dev`.

2) Run using Docker Compose. From the repository root:

`docker-compose build`
`docker-compose up`

This will create a Jupyter Lab instance that can be accessed via http://localhost:8888. When prompted for a password/token, enter `local_dev`. The repository root folder is mounted as `/working`.

3) Use Visual Studio Code with `Remote Development` and `Remote - Containers` extension.

 - Open the folder in VS Code.
 - If you have the extensions installed, a prompt 'Folder contains a Dev Container configuration file' - click the 'Reopen in Container' button.
 - Open a new terminal from the menu bar, and run the following command (inside the container) to start the Jupyter Lab instance:

`jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='local_dev'`

## Contributing

Pull requests accepted.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

