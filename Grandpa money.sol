pragma solidity ^0.5.7;
contract Will{
    address owner;
    uint fortune;
    bool isDeceased;
    constructor() publiv payable{
        owner =msg.sender;
        fortune= msg.value;
        isDeceased=false;

    }

        modifier onlyOwner{
            require( msg.sender ==owner);
            _;

        }

         modifier mustBeDeceased{
            require( isDeceased ==true);
            _;
            
        }

        address payable[] familyWallets;
        mapping (address=> uint) inheritance;
        function setInheritance(address payable wallet, uint inhertAmount) public OnlyOwner{
            familyWallets.push(wallet);
            inheritance[wallets]= inherAmount;
        }
        function payout() private mustBeDeceased{
            for (uint i=0; i<familyWallets.length; i++){
                familyWallets[i].transfer(inhertance[familyWallets[i]]);

            }
        }
        function deceased() public onlyOwner{
            isDeceased= true;
            payout();
        }
}