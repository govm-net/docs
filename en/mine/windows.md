# Mine(windows)

- [Mine(windows)](#minewindows)
  - [Hardware requirements](#hardware-requirements)
  - [Environment setup](#environment-setup)
    - [golang installation](#golang-installation)
    - [Git installation](#git-installation)
  - [Download the source code](#download-the-source-code)
  - [Use the backed up data](#use-the-backed-up-data)
  - [Starting](#starting)
  - [Save wallet file](#save-wallet-file)
  - [Check](#check)
    - [Check if other nodes are connected](#check-if-other-nodes-are-connected)
    - [Confirm start syncing blocks](#confirm-start-syncing-blocks)
    - [Update software](#update-software)
      - [Update database](#update-database)
      - [Update govm](#update-govm)
  - [Rebuild Smart Contract](#rebuild-smart-contract)
  - [Mining](#mining)
  - [More information](#more-information)

## Hardware requirements

1. Now take windows as an example. Other systems are the same process.  
2. 64-bit windows system, at least windows7  
    View: Computer / My Computer-> Right-click-> Properties-> System type: 64-bit operating system  
    If it is 32-bit, it is not supported.  
3. Larger disk space  
   blockchain needs to store a large amount of data, so it needs a lot of space, at least 50G  
    upfront, because there are fewer transactions, and less space is required. There may be 1G of new data in the next day.  
    If there is a solid state drive ,will be better  
4. Network  
    Software always needs to be networked, and because it needs to synchronize data with other nodes, if the network is too poor, it will affect mining
5. The new version and the old version are not compatible. If the old version has already been installed, the database and govm need to be deleted
   1. Save govm/conf/wallet.key to a safe location
   2. Stop the govm window, execute uninstall in the database folder, and close all windows
   3. Delete the database and govm folders

## Environment setup

### golang installation

1. Download address:https://golang.org/dl/  
2. Download go1.13.\*.windows-amd64.msi
3. Direct installation, all default configuration, no need to modify

### Git installation

1. Download address: https://git-scm.com/downloads
2. Click on windows to download  
    ![download](dl_git.png)
3. After downloading, install directly, all default configuration
4. Win10 and win2012 suggest to restart the computer

## Download the source code

1. Select a disk (requires more free space)
2. Create a folder (do not use Chinese, the path is not too long)
3. Enter the folder, right-click in the blank space, and select "Git Bash Here"
4. Enter and press enter: git clone https://github.com/lengzhao/database.git
5. Enter and press enter: git clone https://github.com/govm-net/govm.git
6. Will start downloading the code
7. After success, there should be 2 folders, database and govm
8. After the code is downloaded, compile the code
9. First compile the database: run upgrade.sh
10. Compile govm: run upgrade.sh
11. the govm.exe is generated

## Use the backed up data

1. This step may not be executed. If this step is not performed, data will be synchronized from the beginning, which will take several days
2. if already started
   * Close govm and database
   * run database/uninstall.sh
   * remove database/db_dir
3. Browser open http://govm.net/dl/
4. Download: database_data_v\*.tar.gz and govm_app_v\*.gz
5. After downloading, put the database_data_v\*.tar.gz file into the database folder and decompress it to the current file(database folder)
6. After the decompression is successful, there will be an db_dir folder in the database folder
7. put the govm_app_v\*.gz file into the govm folder and decompress it to the current file(govm folder)
8. After the decompression is successful, there will be an app folder in the govm folder
9. Go to the folder govm-> tools-> rebuild, double click to execute rebuild.sh, the smart contract will be recompiled

## Starting

1. **If you have anti-virus software, please set the govm folder as trusted, otherwise the app will be cleaned by the anti-virus software.**
2. Register the database as a system service, enter the database folder, double-click install.sh, the anti-virus software may have a risk prompt, you need to allow this operation  
    ![db_install](db_install.png)
3. If it is not successful, you can start the database by double-clicking database.exe
4. Start govm, click govm.exe, the program will start and show the software version  
    ![start](start_govm.png)
5. You can use a browser to log in to http://localhost:9090
6. After the program starts, it will automatically connect to other nodes and start to synchronize data (the synchronization time is related to the network and disk)
7. After synchronization is completed, mining will start automatically
8. One block per minute, whoever digs, the reward is who it is, so competition is needed. The stronger the computer's computing power, the easier it is to dig

## Save wallet file

The **wallet.key** in the conf folder is the wallet file. Please backup it to save it.  
If it is lost, it will be lost forever and the virtual currency will never be found again.

## Check

### Check if other nodes are connected

1. Browser opens http://localhost:9090
2. Click on "Node" in the upper right corner
3. Confirm that there are multiple nodes in Nodes, as shown below  
    ![nodes](nodes.png)  
4. If there are no nodes, first check whether the network is normal. If the network is normal, click Submit directly and reconnect.
5. Refresh the page and confirm that there are nodes in Nodes

### Confirm start syncing blocks

1. Browser opens http://localhost:9090
2. Click "Block"
3. The block time has changed. After the update is completed, the block time will be the same as system time, as shown below.  
    ![block](block.png)

### Update software

#### Update database

1. exit govm.exe
2. Enter database folder
3. Close the database window(If not exist, ignore)
4. Run upgrade.sh
5. Start database: run install.sh Or run database.exe

#### Update govm

1. Exit the program, make sure there is no govm.exe process in the task manager, and if so, force the process to end
2. run upgrade.sh
3. run govm.exe to start the program
4. If an exception occurs, the program will exit directly, otherwise it will continue to run(such as: not run database)

## Rebuild Smart Contract

1. into govm/tools/rebuild/, open Bash
2. in bash,run"./rebuild.sh"
3. finish rebuild smart contract
4. show "result,chain: 1 <nil>" on success

    ![rebuild](rebuild.png)

## Mining

1. Please refer to [Mining Tutorial](mining.md)
2. Change the address in servers to the address of your own node

## More information

contact details:  

[discord](https://discord.gg/u3wYFkD)

![email](email.png)
