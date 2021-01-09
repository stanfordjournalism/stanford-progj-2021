# Bash drill

A basic drill for getting reps on shell commands.

Open a terminal.

```
# The most fundamental question: Where am I?
pwd

# Do you have a Desktop?
ls

# Create the Desktop, just in case
mkdir ~/Desktop


# Navigate to Desktop
cd ~/Desktop

# Print working directory
pwd

# Create directory called bash-drill
mkdir bash-drill

# Navigate into the new directory
cd bash-drill

# Create an empty file animals.txt
touch animals.txt

# Echo "dog" to file
echo dog > animals.txt

# Print file contents to shell
cat animals.txt

# Append "bird" to animals.txt
echo bird > animals.txt

# Append "hamster" to animals.txt
# NOTE: We're using ">>" to append.
#  Otherwise it overwrites!
echo hamster >> animals.txt

# Count the lines in animals.txt
wc -l animals.txt

# Sort the words in the file
sort animals.txt

# Search the file for the word dog
grep dog animals.txt

# Sort the animals.txt and save the sorted list to animals_sorted.txt
sort animals.txt > animals_sorted.txt

# Rename animals.txt to pets.text
mv animals.txt pets.txt

# Copy animals_sorted.txt to a animals.txt
cp animals_sorted.txt animals.txt

# List the directory contents
ls

# List with file details
ls -l

# List file details in human-readable way
ls -lh

# Delete animals.txt
rm animals.txt

# List the directory contents
ls

# Navigate to the parent directory
cd ..

# Print working dir (should be on Desktop)
pwd

# List Desktop contents (should see bash-drill)
ls

# Delete the directory (this will fail)
rmdir bash-drill/

# List contents of bash-drill
ls bash-drill/

# Remove all contents of bash-drill
rm bash-drill/*

# Remove the dir
rmdir bash-drill/

# Print your env
env

# Print your env and filter the
# output for just the PATH variable
env | grep PATH
```

Some things to consider/discuss/research:

- What happens if I `echo 'foo' > animals.txt'`? What's the difference between `>` and `>>`?
- What is that pipe thing ("|") all about?
- What are shell environment variables (aka output from `env`)?
- What other commands are "built-in" and automatically available on Unix?

