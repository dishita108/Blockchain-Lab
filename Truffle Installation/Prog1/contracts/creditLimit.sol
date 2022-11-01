pragma solidity >= 0.7.0;

//Dishita Ashar BE IT 2019140003

contract CreditCardLimit {
    uint cardLimit = 10000;
    uint travelCost;
    uint foodCost;
    uint stayCost;

    function set_travelCost (uint cost) public {
        travelCost = cost;
    }

    function set_foodCost (uint cost) public {
        foodCost = cost;
    }
    
    function set_stayCost (uint cost) public {
        stayCost = cost;
    }

    function get_remBalance() public view returns (uint) {
        return cardLimit - (travelCost + foodCost + stayCost);
    }
}
