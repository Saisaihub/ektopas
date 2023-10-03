# Create an Image of Topas with latest Ubuntu

## Prerequisites

Before you get started, ensure you have the following prerequisites in place:

- [Docker](https://docs.docker.com/get-docker/) installed on your system.
- Downloaded the Topas installation file from [Topas Download Page](https://www.topasmc.org/download).
- Obtained the necessary Geant4 datasets files [Geant4 Download Page](https://geant4.web.cern.ch/download/11.1.2.html).

## Procedure

1. Begin by creating a new folder for your simulation project, let's call it `[Your Simulation]`.

   a. Copy the [Dockerfile](Dockerfile), without extension, from this repository into the `[Your Simulation]` folder.

   b. Inside `[Your Simulation]`, create a new directory named `TopasHostIO`. This directory will facilitate data sharing between the host machine and containers.

   c. Optionally, create another folder within `[Your Simulation]` called `G4Data`. This folder will be used exclusively for the container instance created from the downsized image 'ektopaslite'.

2. Copy the required `.tar.gz` files into the `[Your Simulation]` folder:

   a. `topas_3_9_debian9.tar.gz`

   b. Optional, Geant4 dataset files (Place these files here as needed for your simulations).

## Docker Image Creation

To build the Docker image using the provided `Dockerfile`, navigate to the `[Your Simulation]` folder in your terminal and execute the following command:

```bash
docker build -t [Your Image Name (e.g., ektopaslite)] .
```

Check if the images are created by the command:

```bash
docker image ls
```

