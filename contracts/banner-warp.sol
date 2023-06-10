// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract gacha {

    uint[] wish_history;
    uint fourstar_counter = 0;
    uint fivestar_counter = 0;

    receive () external payable {
        require(msg.value == 1 ether,"use 1 ether to wish");
        wisher()
    }

    function wisher() public {
        //pull a random out of 4 or 3 or 5
        //if fourstar_counter is 9 then it should be 4
        //if fivestar_counter is 89 then it should be 5
    }

    function counterupdate(uint current_wish) public{
        
        if(current_wish == 3) {
            fourstar_counter++;
            fivestar_counter++;
        }
        else if(current_wish == 4) {
            fourstar_counter = 0;
        }
        else if(current_wish == 5) {
            fourstar_counter = 0;
            fivestar_counter = 0;
        }
        
    }

    function update(uint current_wish) public {
        wish_history.push(current_wish);
    }

    function listhistory() public {
        //list all elements from wish_history
    }



}