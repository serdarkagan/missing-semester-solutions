# Lecture2 - Shell Tools and Scripting
1. ```
   ls -laht --color=auto
   ```
2. [marco.sh](/Lecture02/marco.sh)
   Executed using `source marco.sh; marco` and `source marco.sh; polo`.
3. [mit-missing1.sh](/Lecture02/mit-missing1.sh) and [debug-mit-missing1.sh](/Lecture02/debug-mit-missing1.sh)
   To run: `source debug-mit-missing1.sh`
4. ```
   -name '*.html' -type f | xargs tar czf ../target.tar.gz
   ```
5. ```
   -type f -print0 | xargs -0 ls -lt | head -n 1
   ```
