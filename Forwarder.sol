pragma solidity ^0.4.23;
pragma experimental "v0.5.0";

/// @title Casper - Interface of the casper contract.
/// @author Gabriele Rigo - <gab@rigoblock.com>
/// @notice ptublic casper functions expressed as external
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
        bytes4 method = 0xbc61394a;
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
