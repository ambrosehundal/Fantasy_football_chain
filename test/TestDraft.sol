pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Draft.sol";


contract TestDraft{

    Draft draft = Draft(DeployedAddresses.Draft());


    uint expectedPlayerId = 5;

    address expectedOwner = address(this);

    function testOwnerCanAdoptPlayer() public {
        uint returnedId = draft.draft(expectedPlayerId);

        Assert.equal(returnedId, expectedPlayerId, "Player was drafted");
    }

}