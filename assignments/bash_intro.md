## Goals

* Get comfy on the command line
* Complete a shell script to filter for failed banks

- [Read and practice](#read-and-practice)
- [Play](#play)
- [Code](#code)

## Read and practice

Skim [The Unix Shell][] tutorial. **You do NOT have to do the exercises but you should type in the commands as you work through the narrative.**  It's fine to skip the *Loops* section.

## Play

> Complete the [technical setup](../docs/tech_setup.md) through git installation before starting this section.

 Play the [bashcrawl](https://gitlab.com/slackermedia/bashcrawl) game *for 20 minutes*. Even better: Play twice on separate days. The more reps you get in, the more comfortable you'll feel on the command line!
 
 Follow the below steps to download the files and get started:

1. Open a Terminal (aka Bash shell)
1. In the shell, execute the following commands: 

> Note, the lines below starting with a `#` sign are code comments. You do not need to execute these in the shell.

```
# Navigate to your user's "home" directory
cd ~

# Download the game code
git clone https://gitlab.com/slackermedia/bashcrawl

# Navigate to the game directory
cd bashcrawl/entrance

# Begin the game by reading the instructions
cat scroll
```

## Code

> Make sure to complete the above reading and practice *before* attempting this code assignment. The [Bash Drill](/exercises/bash_drill.md) we did in class will also come in handy as a reference.  If you get stuck, please reach out on Slack or see us at office hours.

Now that we're comfortable in the shell, try your hand at solving a basic code challenge.

> This will constitute the graded portion of the assignment (details on submission below).

We've created a "starter" shell script called [`failed_banks_ca.sh`](/code/failed_banks_ca.sh). It contains code to
downlod a CSV of [failed banks from the FDIC](https://www.fdic.gov/resources/resolutions/bank-failures/failed-bank-list/) and output the count of failed banks in California. However, it's *missing critical code in the middle*. Your job is to make the code work.

To complete the assignment, do the following:

* Open the Terminal
* Verify that you have the `curl` command by typing: `which curl`
  * If you see a file path to the command, you're all set
  * If you don't get any output, run `brew install curl`
* Create a personal code directory: `mkdir ~/code/`
* Download the starter script from [here](https://raw.githubusercontent.com/stanfordjournalism/stanford-progj-2021/main/code/failed_banks_ca.sh) and save it in the `~/code` directory. You'll need to right click on the page in your browser to save it.
* Open `failed_banks_ca.sh` in VS Code or another *code* editor (not MS Word!)
* **Carefully read the script** from top to bottom
* Complete the items marked `TODO` in order to make the script produce the expected output

The overall goal is to update the script to generate a a new file called `ca_failed_banks.csv`. The new file should contain:

* the header row from the original file (`banklist.csv`)
* only the rows for failed banks in California

The script will print the count of banks from the new file. Note that the count of banks will be the overall count of lines in the new file, minus 1 (for the header).

As you experiment with your solution by adding code to the script, you can perform test runs on the command line by running the below:

```
sh failed_banks_ca.sh
```

Along the way, remember that you can use other shell commands such as `ls` and `cat` or `head` to view files in the `~/code` directory and examine their contents. 

### Submission

Once you've completed the script:

* Copy and paste the contents into a [GitHub gist](https://docs.github.com/en/free-pro-team@latest/github/writing-on-github/creating-gists#creating-a-gist)
* Make sure you've named the file properly in the Gist: `ca_failed_banks.sh`
* Submit the URL to your Gist via Canvas


[CLI cheatsheet]: https://www.git-tower.com/blog/command-line-cheat-sheet/
[The Unix Shell]: http://swcarpentry.github.io/shell-novice/
