# Lecture8 - Metaprogramming
1. `git ls-files` is used with option `-o` to see untracked files in the output.
   Before running `make` execute `git add` command to add them to tracked files. (Otherwise they also get deleted.)
   See the files from here: [Makefile](/Lecture08/Makefile), [data.dat](/Lecture08/data.dat), [paper.tex](/Lecture08/paper.tex), [plot.py](/Lecture08/plot.py).
2. - Caret Requirements\
   An update is allowed if the new version number does not modify the left-most non-zero digit in the major, minor, patch grouping. So, in Caret Requirements change in the major version is not allowed.
     - If left-most non-zero digit is the first number
	      - Minor or patch updates are fine.
     - If left-most non-zero digit is the second number
        - Patch updates are fine
     - If left-most non-zero digit is the third number
        - In this case updates are impossible.
	    - Example:"^0.0.3  :=  >=0.0.3, <0.0.4"
    - Tilde Requirements\
      Tilde requirements specify a minimal version with some ability to update. If you specify a major, minor, and patch version or only a major and minor version, only patch-level changes are allowed. If you only specify a major version, then minor- and patch-level changes are allowed.
       Again change in the major version is now allowed.
       It is a little bit more stricter than Caret.  
         ```
        ~1.2.3  := >=1.2.3, <1.3.0
        ~1.2    := >=1.2.0, <1.3.0
        ~1      := >=1.0.0, <2.0.0	
         ```
    - Wildcard Requirements\
       Wildcard requirements allow for any version where the wildcard is positioned. Major version can also change in this requirement type.
      ```
      *     := >=0.0.0
      1.*   := >=1.0.0, <2.0.0
      1.2.* := >=1.2.0, <1.3.0
      ```
   - Comparison Requirements\
      Comparison requirements allow manually specifying a version range or an exact version to depend on.
     ```
      >= 1.2.0
      > 1
      < 2
      = 1.2.3
     ```
   - Multiple requirements\
     As shown in the examples above, multiple version requirements can be separated with a comma, e.g., `>= 1.2, < 1.5`.
3.  Check the [pre-commit file](/Lecture08/pre-commit).
4.  Shellcheck Github Action is enabled in this repository. Check [here](/.github/workflows/shellcheck.yml).
5.  I didn't implement it, but you can check [here](https://github.com/marketplace/actions/lint-markdown).
   
