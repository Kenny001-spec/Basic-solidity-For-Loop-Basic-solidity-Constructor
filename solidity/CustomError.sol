// SPDX-License-Identifier: MIT
contract VendingMachine {
    address payable owner = payable(msg.sender);
    error Unauthorized(address caller);

    function withdraw() public {
        if (msg.sender != owner)
            // 23688 gas
            // revert("error");
        revert Unauthorized(msg.sender);

        owner.transfer(address(this).balance);
    }
}