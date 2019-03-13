pragma experimental ABIEncoderV2;

contract C {
    function f(uint256[3] calldata s) external pure returns (bytes memory) {
        return abi.encode(s);
    }
    function g(uint256[3] calldata s) external view returns (bytes memory) {
        return this.f(s);
    }
}
// ----
// f(uint256[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
// g(uint256[3]): 23, 42, 87 -> 32, 96, 23, 42, 87
