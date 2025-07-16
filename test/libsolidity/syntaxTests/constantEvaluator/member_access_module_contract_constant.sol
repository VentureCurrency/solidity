==== Source: A.sol ====
contract A {
    uint constant CONST = 2;
}
==== Source: B.sol ====
import "A.sol" as M;
contract C is M.A {
    uint[M.A.CONST] array;
}
// ----
// TypeError 5462: (B.sol:50-59): Invalid array length, expected integer literal or constant expression.
