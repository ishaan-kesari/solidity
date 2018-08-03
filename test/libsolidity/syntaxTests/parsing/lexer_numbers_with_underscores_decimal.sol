contract C {
  function f() public pure {
    // good
    uint d1 = 654_321;
    uint d2 =  54_321;
    uint d3 =   4_321;
    uint d4 = 5_43_21;
    uint d5 = 1_2e10;
    uint d6 = 12e1_0;

    // bad
    uint D1 = 1234_;
    uint D2 = 12__34;
    uint D3 = 12_e34;
  }
}
// ----
// SyntaxError: (216-221): Invalid use of underscores in number literal. No trailing underscores allowed.
// SyntaxError: (237-243): Invalid use of underscores in number literal. Only one consecutive underscores between digits allowed.
// SyntaxError: (259-265): Invalid use of underscores in number literal. No underscore in front of exponent allowed.
