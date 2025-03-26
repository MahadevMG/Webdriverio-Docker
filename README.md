# Webdriverio-Docker

Dockerize the WebdriverIO project.

## Getting Started

Follow these instructions to set up and run the WebdriverIO project within a Docker container.

### Prerequisites

- Ensure you have Docker installed on your machine. You can install Docker by following the instructions at [Get Docker](https://docs.docker.com/get-started/get-docker/).

### Installation

1. **Clone the Repository**

    ```sh
    git clone git@github.com:MahadevMG/Webdriverio-Docker.git
    cd Webdriverio-Docker
    ```

2. **Build the Docker Image**

    ```sh
    docker build -t wdio_docker .
    ```

3. **Run the Docker Image**

    ```sh
    docker run wdio_docker
    ```

## Usage

After running the Docker image, the WebdriverIO project will be set up and ready to use within the Docker container.

