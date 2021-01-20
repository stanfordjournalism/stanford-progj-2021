# Goals

* Learn and practice some Python fundamentals. We're assuming some comfort with these basics next class, so don't skimp on the Python learning!
* Get comfortable tinkering with code and incrementally building up a Python script by working through the [Coding Challenge](#code) from the [Python Syntax Crash Course](/docs/python/python_syntax_crash_course.md). See [below](#code) for details.

## Python reading and practice

Work through the [Python Syntax Crash Course](/docs/python/python_syntax_crash_course.md) if you were absent or if we didn't complete it during class.

Read and work through the specified sections of Chapters 0-2 in [Automate the Boring Stuff][], 2nd Edition.

> **NOTE: You don't have to do the exercises in Automate the Boring Stuff, but you should type in the commands for code examples throughout the text.** 

> Ignore the book's instructions on where to write code. You should use the standard `python` or `ipython` interactive shells and a text editor such as VS Code, as appropriate. See the [crash course](/docs/python/python_syntax_crash_course.md#choose-a-shell) for help on the interpreter.

* [Chapter 0 - Introduction](https://automatetheboringstuff.com/2e/chapter0/) - Read from top through *Programming is a Creative Activity*
* [Chapter 1 - Python Basics](https://automatetheboringstuff.com/2e/chapter1/) - Work through the whole chapter. For *Your First Program*, use VS Code or another code editor to create `hello.py`. Then run it on the command line by executing `python hello.py`.
* [Chapter 2 - Flow Control](https://automatetheboringstuff.com/2e/chapter2/) - Read through *Flow Control Statements - Elif Statements* (stop just before *while Loop Statements*)
* ["for" loops (W3C)](https://www.w3schools.com/python/python_for_loops.asp) - Read and work through all sections

## Code

Work through the [Code Challenge](/docs/python/python_syntax_crash_course.md#code-challenge) at the end of the Python Syntax Crash Course.

Transfer the code to a Python script called `filter_animals.py`. The script can be run/tested on the Bash shell by navigating to the directory where you saved the script and running `python filter_animals.py`.

The script should produce the same output as in the Python interactive interpeter. 

> See below for advice on workflow and details on submitting the code.

### Workflow advice

This assignment is designed in part to get you comfortable experimenting in an interactive Python environment and *incrementally* transferring code to a script. This back-and-forth process is a natural workflow when creating Python "shell" scripts. It's not the only way to work, but it's very helpful when starting out.

We do **NOT** recommend trying to write the entire script in VS Code all at once.

Instead, try the below workflow to incrementally build up your script.

* Run a Python expression or statement in the interactive Python shell.
* If the code works in the shell, copy/paste it over to `filter_animals.py`. *Be sure you do NOT copy over the `>>>` or `...` from the interactive environment!*
* Run `python filter_animals.py` on the *Bash shell* to see if the script works.
* If you have bugs in `filter_animals.py`, fix the bugs in the script until it's working as expected. Pay special attention to code indentation, which is a common source of bugs with this copy/paste workflow.
* Return to the interactive Python environment and repeat the above process for the next bit of code.

### Submission

Once the `filter_animals.py` script is complete, create a [GitHub gist](https://docs.github.com/en/free-pro-team@latest/github/writing-on-github/creating-gists#creating-a-gist) with the code and submit its URL via Canvas.


[Automate the Boring Stuff]: https://automatetheboringstuff.com/2e/