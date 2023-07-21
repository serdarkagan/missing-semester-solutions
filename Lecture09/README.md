# Lecture9 - Command-line Environment
## Entropy
1) The entropy is equal to log_2(# of  possibilities).
So, in our case it is equal to log_2(100,000 ^ 4) which is approximately 66.
2) There is 62 possibilities for a alphanumeric character.
(26 lower case alphabetic characters, 26 upper case alphabetic characters, 10 numbers)
So, entropy is equal to log_2(62 ^ 8) which is approximately 48 bits.
3) Higher entropy is the better choice, so first one is stronger.
4) Firstly, we calculate how many passwords an attacker can try guessing in a year.
  It is equal to 10000*3600*24*365 = 315360000000.
  - First password: (2^66)/315360000000 = approximately 233976966 years.
  - Second password: (2^48)/315360000000 = approximately 893 years.
## Cryptographic hash functions
- I used the [Hungarian mirror](http://ftp.bme.hu/debian-cd/).
Download the required files:
```
curl -O http://ftp.bme.hu/debian-cd/current/amd64/iso-cd/debian-12.0.0-amd64-netinst.iso
curl -O https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/SHA256SUMS
```
- Then verify the files:
```grep "debian-12.0.0-amd64-netinst.iso" SHA256SUMS | sha256sum --check```
- Output should be like this:
```debian-12.0.0-amd64-netinst.iso: OK```
## 3. Symmetric cryptography
- Create a file: `echo "This file is for symmetric cryptography." > input.txt`
- Encrypt it: `openssl aes-256-cbc -salt -in input.txt -out output.txt`
  (It should ask for a password, enter whatever you want.)
- Decrypt it: `openssl aes-256-cbc -d -in output.txt -out input-1.txt`
- Check: `cmp input.txt input-1.txt | echo $?`
## 4. Asymmetric cryptography
1. `ssh-keygen -t ed25519`
2. `gpg --gen-key`
3. `gpg --encrypt --sign --armor -r me@anishathalye.com name_of_file`
4. First run magical command `export GPG_TTY=$(tty)`
  Then, run `git commit -S -m "commit-message"`
  Lastly check with the command `git show --show-signature`
