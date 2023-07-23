# Lecture7 - Debugging and Profiling
## Debugging
1. ```
    journalctl --grep="sudo.*"
   ```
2. -
3. Edited version of the script can be found in [here.](/Lecture07/edited-script.sh) ALE may be a good option as a linter plugin for Vim.
4. [SKIP] Skipped for now.
## Profiling
5. - Execute the command below using provided [sorts.py](/Lecture07/sorts.py) file
   ```
    python3 -m cProfile -s tottime sorts.py 1000
   ```
   - Output:
   ```
      ncalls        tottime  percall  cumtime  percall filename:lineno(function)
	  79863         0.061    0.000    0.122    0.000 random.py:292(randrange)
	  79863         0.036    0.000    0.048    0.000 random.py:239(_randbelow_with_getrandbits)
	  34732/1000    0.028    0.000    0.030    0.000 sorts.py:32(quicksort_inplace)
	  33838/1000    0.026    0.000    0.041    0.000 sorts.py:23(quicksort)
	  1000          0.025    0.000    0.025    0.000 sorts.py:11(insertionsort)
	  79863         0.021    0.000    0.144    0.000 random.py:366(randint)
   ```
   - We should look to the "cumtime" to see the cumulative time spent in this and all subfunctions.
   Insertion sort is the fastest, and quicksort is the slowest.
   ```
    kernprof -l script_to_profile.py
   ```
   - As we can see from the [results](/Lecture07/sortResults.txt) bottleneck of each algorithm is:
     - insertionsort -> lines 16-17 which are while's condition check and the line which makes 2 array accesses.
     - quicksort -> lines 27-28 which are computations of left and right.
     - quicksort_inplace -> line 42 which is the for loop takes too much time because it is hit a lot.\
   - See the results of memory profiler from [here](/Lecture07/memory-profiler-results.txt). Since tested arrays maximum length are 50, we don't see the real difference here.  
6. - In [fibonacci.py](/Lecture07/fibonacci.py) fib0 is called [21 times](/Lecture07/fibonacci.png).
   - In [edited-fibonacci.py](/Lecture07/edited-fibonacci.py) each fibN is called [1 time](/Lecture07/edited-fibonacci.png).
7. Create a new session in tmux.
   In the new session, also create a new window so that we can run the second command.
   In the first window execute `python -m http.server 4444`.
   In the second window execute `lsof | grep LISTEN`. You get an output of pid and other details.
   Execute `kill <PID>` command and now web server is terminated.
8. As you can see from the screenshots([without-tasket](/Lecture07/without-tasket.png), [with-taskset](/Lecture07/with-taskset.png)), if we execute the command without `taskset` it is taking 3 CPUs.
   But, if we use "taskset" it only uses CPUs 0 and 2. `--cpu-list` specifies which CPUs to use.
   [SKIP] CGroup part is skipped.
9. Open WireShark and Terminal.
   Select your connection from home page in WireShark.
   Execute `curl ipinfo.io` from terminal.
   In WireShark filter by http and now you see the packets curl sent and received. See the screenshot [here](/Lecture07/wireshark.png).
   First one is the packet that curl sent.
   Second one is the packet curl received.
   Second protocol is "HTTP/JSON" which is confirmed by terminal as we get an JSON output after executing `curl ipinfo.io`.
