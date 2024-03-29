# catpat
## DESCRIPTION:
**Copy passwords from a file into clipboard.**

## SETTING UP:
**https://github.com/strikernd01/catpat.git**

**sudo apt install xclip** 
- **Make sure to not have any aliases set for xclip**

**chmod +x ./catpat/catpat.sh**

**sudo cp ./catpat/catpat.sh /usr/bin/catpat**

## USAGE:
**catpat \[options\] \[arguments\]**

## OPTIONS:
### **-n**

**Reads the nth password from usage:password pairs**
 
**Example: catpat -n 5**
  

### **-f**

**custom file instead of .pat**
 
**Example: catpat -f password.txt**
