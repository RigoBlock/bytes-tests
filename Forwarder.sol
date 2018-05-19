pragma solidity ^0.4.23;
pragma experimental "v0.5.0";

/// @title Forwarder - Forward abi-encoded transactions.
/// @author Gabriele Rigo - <gab@rigoblock.com>
/// @notice ptublic casper functions expressed as external
contract Forwarder {

    function forwardCall(
        address target,
        bytes data)
        public
    {
        target.delegatecall(data);
    }
    
    function filterMethod(
        address target,
        bytes4 method,
        bytes data)
        public
    {
        target.delegatecall(method, data);
    }

    function forwardSig(
        address target,
        bytes data)
        public
    {
        bytes4 method = 0xbc61394a; //signature of 0x fillOrder() function
        target.delegatecall(method, data);
    }
}
