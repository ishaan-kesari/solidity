contract C {
  function f() public pure {
    // good
    fixed f1 = 3.14_15;
    fixed f2 = 3_1.4_15;

    // bad
    fixed F1 = 3.1415_;
    fixed F2 = 3__1.4__15;
    fixed F3 = 1_.2;
  }
}
// ----
// SyntaxError: (130-137): Invalid use of underscores in number literal. No trailing underscores allowed.
// SyntaxError: (154-164): Invalid use of underscores in number literal. Only one consecutive underscores between digits allowed.
// SyntaxError: (181-185): Invalid use of underscores in number literal. No underscores in front of the fraction part allowed.
