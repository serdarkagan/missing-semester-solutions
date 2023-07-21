# Lecture5 - Version Control (Git)
## Job Control
1. ```
   sleep 10000
   Ctrl+Z
   bg
   pgrep -af "sleep 10000"
   pkill -f "sleep 10000"
   ```
2. Solution for same bash session case:
   ```
   sleep 60 & wait && ls
   ```
   Solution for different bash session case with the script [pidwait.sh](/Lecture05/pidwait.sh):
   ```
   sleep 60 &; grep -f "sleep" | xargs pidwait.sh
   ```
   After these commands I get the output "Sleeped 57 seconds.".
   It's normal that 3 seconds comes from other operations (compare, increment, execute).
## Terminal Multiplexer
1. -
## Aliases
1. ```
   insert "alias dc=cd" into ~/.bashrc
   ```
2. Executing the command below shows me that I used `ls -la` a lot. So using an alias like `alias ll="ls -la"` is a good option for me.
## Dotfiles
1. -
2. -
3. -
4. -
5. -
6. -
## Remote Machines
1. ```
    ssh-keygen -o -a 100 -t ed25519
    eval "$(ssh-agent)"
    ssh-add
   ```
2. -
3. ```
   ssh-copy-id vm
   ```
4. Using tmux in this case is a good option.
   First use ssh to connect to VM. 
   Then execute `python3 -m http.server 8888`.
   Since we edited `.ssh/config` we don't need to do local port forwarding again.
5. [SKIP] Skipped it for now.
6. Execute command `sudo apt-get install mosh` in VM.
   Then if you disconnect the network adapter of the server, and connect it again; mosh succesfully recovers from that, and you don't lose the ssh connection.
7. - -N: Do not execute a remote command.  This is useful for just forwarding ports.
   - -f:  Requests ssh to go to background just before command execution.
        This is useful if ssh is going to ask for passwords or passphrases, but the user wants it in the background.
   - So adding -fN is sufficient. For example: ```ssh -fN -L 9999:localhost:8888 vm"```
