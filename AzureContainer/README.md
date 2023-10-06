Current Structure on Azure:

> Name TBC `Azure Subscription`
>
> > **ektopasimage**  `resource group`  
> >
> > > *ektopasfull* `container registry`
> > >
> > > > ektopasfull:latest `container image`
> > > >
> > > > ektopasfull:topas3.9v1.0 `container image`
> > >
> > > *ektopaslite* `container registry`
> >
> > **ektopastorage **`resource group` 
> >
> > > *topastorage*  `storage account`
> > >
> > > > topastorage-g4data `File share`
> > > >
> > > > topastorage-io `File share`
> >
> > **ektopasrun **`resource group`  
> >
> > > *topasrungroup* `container instance group`
> > >
> > > > mytopasrun `container instance`

Simplified Structure:

> Name TBC `Azure Subscription`
>
> > **ektopas Resource Group** `resource group`  
> >
> > > ***elekta-topas-registry*** `container registry`
> > >
> > > > elekta-topas-full `container image` :latest / :3.9v1.0 / ... `tags`
> > > >
> > > > elekta-topas-lite `container image` :latest / :3.9v1.0 / ... `tags`
> > >
> > > ***elekta-topas-storage*** `storage account`
> > >
> > > >topastorage-g4data `File share`
> > > >
> > > >topastorage-io `File share`
> > >
> > > *topasRuntime_[my project]* `container instance group`
> > >
> > > > mytopasRun `container instance

- image：
  - 如何tag
  - 如何上传
  - 需要的设定：打开
  - 如何在portal上看到资源

- 需要的应用：docker， azure file explorer，azure CLI
- 储存账户
  - 如何新建share file
  - 如何获取权限
  - 如何获取密钥
  - 一个固定的空间：G4data
  - 一个自定义的空间：TEMPIO
  - 如何使用Azure file explorer
  - 如何在portal上管理

- 如何运行一个容器
  - yaml文件：简单介绍
  - 运行命令
  - 如何在Azure portal上观察状态

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
