# SLAE
Repository for the SLAE exam  
Student **SLAE-1352**  
[http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/](http://www.securitytube-training.com/online-courses/securitytube-linux-assembly-expert/)  

**What is the SLAE?**
The SecurityTube Linux Assembly Expert (SLAE) is an online course and certification which focuses on teaching the basics of 32-bit assembly language for the Intel Architecture (IA-32) family of processors on the Linux platform and applying it to Infosec. Once we are through with the basics, we will look at writing shellcode, encoders, decoders, crypters and other advanced low level applications.
  
You will find the articles related to this repo in the **certification** section on my [blog](https://xxx/):  
```  
 * Assignment 1 - Shell_Bind_TCP shellcode
 * Assignment 2 - Shell_Reverse_TCP shellcode
 * Assignment 3 - Egg Hunter shellcode
 * Assignment 4 - Encoding/Decoding shellcode
 * Assignment 5 - Msfvenom shellcodes analysis
 * Assignment 6 - Polymorphic shell-storm shellcodes
 * Assignment 7 - Custom crypter
```
  
*Each assignment directory will provide an example of command line in order to generate your shellcode*  
  
The SLAE course has been performed on a 32bits Kali environment:  
```bash
# uname -a
Linux kali 4.6.0-kali1-686 #1 SMP Debian 4.6.4-1kali1 (2016-07-21) i686 GNU/Linux
```
  
We recommend to run the commands on a 32bits environment. Otherwise you should adapt them:  
```bash
nasm -f elf32 -o $1.o $1.nasm
ld -m elf_i386 -o $1 $1.o
gcc -fno-stack-protector -z execstack -m32 -o shellcode shellcode.c
```
  
You are free to use and/or redistribute without restriction every source code of this repository.
