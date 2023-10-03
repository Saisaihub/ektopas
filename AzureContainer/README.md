# Containerized Topas MC Simulation Infrastructure on Azure

## Introduction

After running through the simulation test in a **container** on a **local computer**, it's time to move on to the next step: move the infrastructure to the **HPC** of Azure.

There are three main modules in this project:

1. A space to store the **IMAGEs**, where the user can upload different configuration of **Topas**, such as different version of Linux or a **full/downsized** image **with/without** Geant4 dataset (Cross-section data).
2. A space to run and manage **CONTAINER INSTANCES**, where will allow the user to configure the **computing resources**. 
3. A **data storage** space, which is responsible for the data communication between the **host** and the **container**.

A space in Azure is defined as a **'Resource Group'**.

## Document Structure

### **[azure-image.md](azure-image.md)** 

- Creating an Azure Registry

- Pushing the local image to Azure Registry

---

### [azure-storage.md](azure-storage.md)

- upload/download files to ~~storage space~~
- ...

---

### [azure-instancerun.md](azure-instancerun.md)

- launch a container with proper parameters
  - **mount** the storage space to the container instance
  - setup the **entrypoint** of the container instance
  - setup the **environment** for G4 calculation
- ...

---

### 
