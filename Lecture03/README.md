# Lecture3 - Editors (Vim)
1. -
2. -
3. -
4. -
5. -
6. -
7. -
8. Lecture Notes already contains a solution for this but I tried myself to do this and came up with a different solution.
   In this conversion 4 lines of XML file becomes 4 lines of JSON file. Below, I explained it line by line:
   First Line: Remove the `<person>` and insert `{`.
	 ```
    ddO<esc>i<ws><ws>{<esc>
   ```
   Second Line: Remove the tags and insert `"` and insert `,` to the end of the line.
   ```
    j2lr"5lr"li:<ws>"<esc>f<r"lr,lD
   ```
   Third Line: Remove the tags and insert `"`.
    ```
    j^r"6lr"li:<ws>"<esc>f<r"lD
    ```
   Fourth Line: Remove the `</person>` and insert `},`.
    ```
    j^Di},<esc>j^
    ```
   Note: After recording this macro in a register, executing with the command `250@<register_name>` converts all of the file
   (except first and last line which can be deleted by commands `Gdd` and `ggdd`).
