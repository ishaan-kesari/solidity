contract C {
  function f() public pure {
    // good
    uint x1 = 0x8765_4321;
    uint x2 = 0x765_4321;
    uint x3 = 0x65_4321;
    uint x4 = 0x5_4321;
    uint x5 = 0x123_1234_1234_1234;

    // bad
    uint X1 = 0x1234__1234__1234__123;
    uint X2 = 0x123_1234_1234_123;
    uint X3 = 0x1234_1234_1234_123;
    uint X4 = 0x123456_1234_1234;
  }
}
// ----
// SyntaxError: (218-241): Invalid use of underscores in number literal. Only one consecutive underscores between digits allowed.
// SyntaxError: (257-276): Invalid use of underscores in hex literal. First or last part must have 4 digits.
// SyntaxError: (292-312): Invalid use of underscores in hex literal. If the first part has 4 digits, it is assumed to be a byte sequence instead of a number and thus the last part should have an even number of digits.
// SyntaxError: (328-346): Invalid use of underscores in hex literal. The first part 123456 is too large. Group up by thousands.
