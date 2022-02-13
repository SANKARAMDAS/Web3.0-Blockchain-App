//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions{
    uint256 transactionCount;

    event Trnasfer(address from, address receiver, uint amount, string message, uint256 timestamp, string heyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string messages;
        uint256 timestamp;
        string keyword;
    }
                                    
    TransferStruct[] transactions;  //transaction veriable is f=going to be an array of TransferStructures.
                                   // array can store all of them.

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
           transactionCount +=1;
           transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));  // store all the transactions that come through it
           
           emit Trnasfer(msg.sender, receiver, amount, message, block.timestamp, keyword);   //transfer the ammount
    } 

    function getAllTransactions() public view returns (TransferStruct[] memory) {
         return transactions;
    } 

    function getTransactioCount() public view returns (uint256) {
         return transactionCount;
    }                               
}                                  