# Mine(windows)

- [Mine(windows)](#minewindows)
  - [Hardware requirements](#hardware-requirements)
  - [Environment setup](#environment-setup)
    - [golang installation](#golang-installation)
    - [Git installation](#git-installation)
  - [Download the source code](#download-the-source-code)
  - [Starting](#starting)
  - [Save wallet file](#save-wallet-file)
  - [Check](#check)
    - [Check if other nodes are connected](#check-if-other-nodes-are-connected)
    - [Confirm start syncing blocks](#confirm-start-syncing-blocks)
    - [View your token](#view-your-token)
    - [How to transfer](#how-to-transfer)
    - [Token Unit](#token-unit)
    - [Update software](#update-software)
      - [Update database](#update-database)
      - [Update govm](#update-govm)
    - [No mine, Why](#no-mine-why)
  - [Version with data](#version-with-data)
  - [Rebuild Smart Contract](#rebuild-smart-contract)
  - [Register miner automatically](#register-miner-automatically)
  - [Multi-core mining](#multi-core-mining)
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

1. The following introduces the new update method. The data update takes a long time. You can also download the version with data directly. For details, see the following chapter "Version with Data".
2. Select a disk (requires more free space)
3. Create a folder (do not use Chinese, the path is not too long)
4. Enter the folder, right-click in the blank space, and select "Git Bash Here"
5. Enter and press enter: git clone https://github.com/lengzhao/database.git
6. Enter and press enter: git clone https://github.com/lengzhao/govm.git
7. Will start downloading the code
8. After success, there should be 2 folders, database and govm
9. After the code is downloaded, compile the code
10. First compile the database

    ```bash
    cd database/
    go build
    ll database.exe
    ```

11. Compile govm:

    **If you have anti-virus software, please set the folder as trusted, otherwise the app will be cleaned by the anti-virus software.**
    run upgrade.sh or do as follows in bash

    ```bash
    cd ../govm/
    go build
    ll govm.exe
    cp ./conf/conf.json.bak ./conf/conf.json
    ```

12. the govm.exe is generated

## Starting

1. Register the database as a system service, enter the database folder, double-click install.sh, the anti-virus software may have a risk prompt, you need to allow this operation  
    ![db_install](db_install.png)
2. If it is not successful, you can start the database by double-clicking database.exe
3. Start govm, click start.sh, the program will start and show the software version  
    ![start](start_govm.png)
4. You can use a browser to log in to http://localhost:9090
5. After the program starts, it will automatically connect to other nodes and start to synchronize data (the synchronization time is related to the network and disk)
6. After synchronization is completed, mining will start automatically
7. One block per minute, whoever digs, the reward is who it is, so competition is needed. The stronger the computer's computing power, the easier it is to dig

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

### View your token

1. Browser opens http://localhost:9090
2. If already open, click Home
3. The following message will be displayed  
    ![balance](balance.png)
4. "Wallet Address" is your wallet address, this address is used for transfer in and out
5. Balance is the balance on the wallet, and the reward for each mining is about 5tc.

### How to transfer

1. Browser opens http://localhost:9090
2. Click Transfer
3. Fill in the peer's wallet address in "Peer"
4. "Amount" fill in the transfer amount
5. Click Submit
6. The transfer is not real-time. This transaction needs to be packaged into a block before it officially takes effect.

### Token Unit

1. Units t0,t3,t6,t9,tc
2. The default unit is tc, which is 10 ^ 12 \* t0
3. t3 = 1000 \* t0, t6 = 1000 \* t3, t9 = 1000 \* t6, tc = 1000 \* t9
4. The reward of each mining is about 5tc
5. The default unit can be changed on the "Setting" page

### Update software

#### Update database

1. exit govm.exe
2. Enter database folder
3. Close the database window(If not exist, ignore)
4. Run upgrade.sh
5. Start database: run install.sh Or run database.exe

#### Update govm

1. Exit the program, make sure there is no govm.exe process in the task manager, and if so, force the process to end
2. You can directly run upgrade.sh to upgrade, or perform the following operations to upgrade
   * In the govm folder, right-click in the blank space and select "Git Bash Here"  
   * Enter: git pull  
   * If the update fails (error), delete the conflicting files according to the prompt, and perform the previous step again. As shown in the figure below, you need to delete the files listed in the red box, and then execute upgrade.sh  
   * After the update is complete, recompile

    ![upgrade_err](upgrade_err.png)  

3. Click start.sh to start the program
4. If an exception occurs, the program will exit directly, otherwise it will continue to run(such as: not run database)

### No mine, Why

1. The data has not been synchronized. First make sure that the time in the block page is the same as the computer time.
2. If the time in the block page has not changed, check whether there is a node in Node. If not, you need to add it manually
3. Computer time is wrong, make sure the computer time is the same as universal time
4. Computer performance problems, in the early stage, it is easy to dig with ordinary computers. With the increase of nodes, the computing power requirements are getting higher and higher, and ordinary computers are difficult to dig.

## Version with data

1. install golang and git
2. download from http://govm.net/dl/
3. select the newest version
4. decompression(the path do not include space and local language)
5. into database, run upgrade.sh
6. into govm, run upgrade.sh
7. rebuild smart contract, [rebuild smart contract](#Rebuild Smart Contract)
8. **If you have anti-virus software, please set the folder as trusted, otherwise the app will be cleaned by the anti-virus software.**
9. start govm [Starting](#Starting)

## Rebuild Smart Contract

1. into govm/tools/rebuild/, open Bash
2. in bash,run: go build
3. run: cd ../..
4. run: ./tools/rebuild/rebuild.exe
5. finish rebuild smart contract

## Register miner automatically

1. If there is no coins in the account, skip this chapter.
2. Registered miners will be weighted when calculating block hash power. If they are not registered, it will take more hash power to mine
3. Registration does not mean that you can successfully mine. Only when mining, the hash power will add weighting, which is easier to be accepted by other nodes and not easily replaced.
4. The configuration is in govm/conf.json, which can be opened with a text editor
5. set cost of registered
   1. It is recommended to set 15tc, the configuration files use t0, so the value should be 15000000000000
   2. No less than 15tc, configuration 0 means no automatic registration
   3. Modify the value of cost_of_reg_miner in the configuration file
   4. More coins have a higher weight, in order to avoid too many people registering and being squeezed out, you can increase the coins
   5. 15tc is the most cost-effective configuration (if the number of registered people is crowded out, you can increase the amount appropriately)
   6. You can check the information after successful registration on the "Miner" page
6. Set the registered serial number (random if not set)
   1. Automatic registration is registered every 11 blocks (this cannot be changed, it allow more participation)
   2. There may be many people registering one at the same time, you can choose the registration number
   3. If it is not in the configuration, you can add a line in the middle.
   4. It is recommended to set the value to a number from 1 to 11. 0 or not set means random

    ```bash
    "lucky_number":1,
    ```

## Multi-core mining

1. The default govm version only supports single CPU core mining (multi-core will cause conflicts in smart contract processing)
2. Here is a dedicated multi-core mining program (need to install and start govm according to the previous tutorial)
3. Download the mining program from the official website: http://govm.net/dl/
4. File name mining *, choose the latest version to download
5. After downloading it, unzip it and put the 3 folders database, govm and mining in parallel
6. Change parameters(mining/conf/conf.json):
   1. Set the number of threads: thread_num
   2. Can not be set to 0, it is recommended to be consistent with the number of CPU cores
   3. If the computer has other uses, you can set it as needed
   4. By default, mine all chains. If you only want to mine one chain, you can set chain_of_mine, 0 means all chains, and non-zero means the id of chains, such as 1 or 2.
7. After the configuration modification is completed, double-click mining.exe to start the program, the program needs to be open all the time
   1. If there is an exception, it will exit the program directly
   2. When abnormal, you can run it with Bash to view the error message
   3. Open Bash and execute ./mining.exe

## More information

contact details:  
![email](email.png)
