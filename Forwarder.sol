pragma solidity ^0.4.23;
pragma experimental "v0.5.0";

/// @title Forwarder - a simple proxy forwarder.
/// @author Gabriele Rigo - <gab@rigoblock.com>
/// @notice call tests for forwarding from proxy contract
/// @notice actual calls must be written in assembly
contract Forwarder {
    
    address public exchange;

    function() external {
        exchange.delegatecall(msg.data);
    }
    
    function setExchange(address _exchange)
        public
    {
        exchange = _exchange;
    }
    
    function getExchange()
        external view
        returns (address)
    {
        return exchange;
    }

    function forwardCall(
        address target,
        bytes data)
        public
    {
        target.delegatecall(data);
    }

    function forwardSig(
        address target,
        bytes data)
        public
    {
        bytes4 method = 0xbc61394a; // 0x fill order method
        target.delegatecall(method, data);
    }

    function filterMethod(
        address target,
        bytes4 method,
        bytes data)
        public
    {
        target.delegatecall(method, data);
    }

    function keccakInput(
        address target,
        bytes functionName,
        bytes data)
        public
        returns (bytes4 method)
    {
        method = bytes4(keccak256(functionName));
        target.delegatecall(method, data);
    }

    function shaInput(
        address target,
        bytes32 shaOfFunction,
        bytes data)
        public
        returns (bytes4 method)
    {
        method = bytes4(shaOfFunction);
        target.delegatecall(method, data);
    }    

/*
    function assembleCall(
        address target,
        bytes data)
        public
    {
        bytes4 sig = 0xbc61394a;
        uint256 argsSize = 1 * 32;
        // sig + arguments size
        uint256 dataSize = 4 + argsSize;

        bytes memory m_data = new bytes(dataSize);

        assembly {
            // Add the signature first to memory
            mstore(add(m_data, 0x20), sig)
            // Add the parameters
            mstore(add(m_data, 0x24), data)
        }

        target.delegatecall(sig, m_data);
    }
*/
}
