# Lecture1 - Course overview + the shell
1. -
2. ```mkdir /tmp/missing```
3. -
4. ```touch /tmp/missing/semester```
5. ```
   echo '#!/bin/sh' >> /tmp/missing/semester
   echo "curl --head --silent https://missing.csail.mit.edu" >> /tmp/missing/semester
   ```
6. ```
   cd /tmp/missing
   ls -l
   ```
   After these two commands I got "-rwxr-xr-x 1 90507 197121 61 Jun 29 13:05 semester*".
   Second, third and fourth bits show that this file is readable, writable and executable respectively. I don't know why I have all permissions but left it as it is.
7. ```sh /tmp/missing/semester```
   "Executing the shell script" and "running a shell script using sh" is two different things.
   Because "sh" command first reads the file and then executes its contents. Readable file is sufficient in this case.
   But if we simply write path of the file without "sh" command, we directly execute it and it needs an executable file in that case.
   ([resource](https://askubuntu.com/a/25688))
8. -
9. ```chmod u+x /tmp/missing/semester```
   If a file starts with "#!" it indicates that this file is a script. In that case it must be run with "sh".
10. ```date -r /tmp/missing/semester | cat > ~/last-modified.txt```
11. Battery Level:
    ```
    /sys/class/power_supply/BAT0; cat capacity
    ```
