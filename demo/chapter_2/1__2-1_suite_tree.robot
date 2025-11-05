*** Comments ***
[K2] Understand which files and directories are considered suites and how they are structured in a suite tree.

▷ Directory (No Suite)
▶︎ Suite Directory
◻︎ File (No Suite)
◼︎ Suite File

 ----- Tree Structure / Order --------- | ---- Suite Name ---------
  ▶︎ Root_Suite                          | Root Suite
    ◼︎ A_Suite.robot                     | A Suite
    ▶︎ Earlier_Suite_Directory           | Earlier Suite Directory
      ◼︎ B_Suite.robot                   | B Suite
      ◼︎ C_Suite.robot                   | C Suite
    ▷ Keywords (No Suite)               |
      ◻︎ technical_keywords.resource     |
    ▶︎ Later_Suite_Directory             | Later Suite Directory
      ◼︎ 01__FirstSuite.robot            | FirstSuite
      ◼︎ 02__SecondSuite.robot           | SecondSuite
      ▶︎ 03__ThirdSuite                  | ThirdSuite
        ◼︎ 01__FirstSubSuite.robot       | FirstSubSuite
        ◼︎ 02__SecondSubSuite.robot      | SecondSubSuite
      ◼︎ 04__FourthSuite.robot           | FourthSuite
