# 智能合约

智能合约就是运行在区块链上的app  
发布智能合约就是将app的源码或二进制文件以交易的形式放到区块链上，计算节点处理交易的时候，会验证合约的有效性，并保存到本地。  
执行智能合约就是以交易的形式调用智能合约。计算节点处理该交易的时候，加载并执行智能合约。  
由于智能合约需要每个节点都运行，所以要求在相同入参的情况下，智能合约的执行结果都一样。  
智能合约的形式有多种，不同的区块链系统可能存在不一样的合约机制。  
孚衍系统的智能合约是golang源码。