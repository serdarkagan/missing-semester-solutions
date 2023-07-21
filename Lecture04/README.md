1. -
2. Find the number of words (in /usr/share/dict/words) that contain at least three `a`s and don’t have a `'s` ending. 
	 ```
   tr 'A' 'a' < words | grep ".*a.*a.*a[^['s]]*" -c
   ``` 
   What are th 3 most common last 2 letters of those words?
   ```
   tr 'A' 'a' < words | grep ".*a.*a.*a[^['s]]*" | sed -E 's/^.*(..)$/\1/' | sort | uniq -c | sort -nk1,1 | tail -n3
   ```
   How many of those two letter combinations are there?
   ```
   tr 'A' 'a' < words | grep ".*a.*a.*a[^['s]]*" | sed -E 's/^.*(..)$/\1/' | sort | uniq -c | wc -l
   ```
   Which combinations do not occur?
   [SKIP] Skipped it for now.
3. Before writing to a file, file is cleared and it is written from the beginning. 
   Since we read from the input.txt and write to the same file; input.txt gets cleared and then, we can't read this file properly.
   So, in-place substitution can't be made in this simple manner.
   Luckily, "sed" has the "-i" option which can be used in the case of editting files in-place.
4. [SKIP] Skipped it for now.
5. [SKIP] Skipped it for now.
6. My solution is very long but does the job.
   ```
   curl https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/topic-pages/tables/table-1 | grep -E -A1 "^<td id=\"cell([4-9]|[1-2][0-9])1\" .*" | grep "<\/td>$" | grep -o "[0-9,]*" | sort | awk -F "\t" 'NR==1{print $1 "\t"} NR==20{print $1}'
   ```
