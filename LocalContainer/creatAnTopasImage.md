# Create an Image of Topas with latest Ubuntu

## Prerequisites

Before you get started, ensure you have the following prerequisites in place:

- [Docker](https://docs.docker.com/get-docker/) installed on your system.

- Downloaded the Topas installation file from [Topas Download Page(v3.9)](https://www.topasmc.org/download).

- Obtained the necessary Geant4 datasets files [Geant4 Download Page(v10.7.1)](https://geant4.web.cern.ch/download/10.7.1.html).

  > https://cern.ch/geant4-data/datasets/G4NDL.4.6.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4EMLOW.7.13.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4PhotonEvaporation.5.7.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4RadioactiveDecay.5.6.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4PARTICLEXS.3.1.1.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4PII.1.3.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4RealSurface.2.2.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4SAIDDATA.2.0.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4ABLA.3.1.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4INCL.1.0.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4ENSDFSTATE.2.3.tar.gz
  >
  > https://cern.ch/geant4-data/datasets/G4TENDL.1.4.tar.gz
  
  *Topas3.9 is based on Geant4 v10.7.1, you need to download the relevant version*

## Data and Folder Preparation

1. **Create a Project Folder:**

   Start by creating a new folder for your simulation project. Let's name it `[Your Simulation]`. This folder will serve as the central directory for your simulation work.

   a. **Copy and Rename the Dockerfile:**

   - Copy either the [Dockerfile-full](https://chat.openai.com/c/Dockerfile-full) or [Dockerfile-lite](https://chat.openai.com/c/Dockerfile-lite) from this repository, lite version doesn't copy the Geant4 dataset into the image.
   - Paste the selected Dockerfile into the `[Your Simulation]` folder.
   - Rename the pasted file to **Dockerfile** (without any file extension).

   b. **Create a Directory for Data Sharing between Host computer and Container:**

   Within the `[Your Simulation]` folder, create a new directory named `TopasHostIO`. 

   Copy  `inputexample.txt` into this folder.

   *This directory will facilitate seamless data exchange between your host machine and the containers.*

   c. **Create a Folder for G4Data:**

   Create an additional folder within `[Your Simulation]` named `G4Data`. This folder is to store the Geant4 datasets.

2. **Copy Installation Files:**

   Copy the following installation files into the `[Your Simulation]` folder:

   - `topas_3_9_debian9.tar.gz.part1`
   - `topas_3_9_debian9.tar.gz.part2`

3. **Copy Geant4 Dataset Files into the G4Data Folder:**

   - Locate the Geant4 dataset files you possess, which are in the `tar.gz` format.
   - Copy these dataset files into the `G4Data` folder that you previously created within `[Your Simulation]`.
   - If these dataset files are compressed, extract them within the `G4Data` folder.

   ### The structure will be like

   ***note***: you can download and upzip [The templete folder](Your Simulation.7z).
   
   > `Your simulation`
   >
   > > Dockerfile
   > >
   > > topas_3_9_debian9.tar.gz.part1
   > >
   > > topas_3_9_debian9.tar.gz.part2
   > >
   > > `TopasHostIO`
   > >
   > > > inputexample.txt
   > >
   > > `G4Data`
   > > 
   > > > G4NDL.4.6.tar.gz
   > > >
   > > > G4EMLOW.7.13.tar.gz
   > > >
   > > > ...
   > > >

## Docker Image Creation

To build the Docker image using the provided `Dockerfile`, navigate to the `[Your Simulation]` folder in your terminal and execute the following command:

```bash
docker build -t [Your Image Name (e.g., ektopaslite)] .
```

Check if the images are created by the command:

```bash
docker image ls
```

