## Goals

- Learn how to use a variety of Python libraries and work with remote files
- Apply a growing set of practical Python skills to the FDIC failed banks data.

## Level up on key Python skills

> The skills covered in the tutorials below are needed to complete the Failed Banks assignment. Be sure to carefully work through these *before* attempting the coding assignment.

* Learn how to use [code libraries](/docs/python/libraries.md) included with Python or offered by third parties
* Learn how to [download remote files](/docs/python/remote_files.md)
* Learn how to [work with CSVs](/docs/python/csv.md)


## Failed CA Banks python script

> **Please make sure to have carefully worked through the Python tutorials [above](#level-up-on-key-python-skills) before attempting this portion of the assignment.**

### Requirements

The deliverables for this assignment are largely the same as our earlier [Bash script assignment](bash_intro.md#code): 

* Create a CSV containing failed banks in CA based on the [FDIC Failed Banks][] list.
* Print the number of failed banks in CA to the shell

[FDIC Failed Banks]: https://www.fdic.gov/resources/resolutions/bank-failures/failed-bank-list/

This time, however, you must create a Python script to perform the work. We've also thrown in an extra challenge that involves reformatting a date (something that would have been tricky to do in the shell script using standard Unix tools).

For this assignment, we've created an empty script called [`failed_banks_ca.py`](/code/failed_banks_ca.py). It includes details on the required steps.

 **Please read the script carefully before starting to code.**

Your job is to download and flesh out [`failed_banks_ca.py`](/code/failed_banks_ca.py) in all the spots where there is a `TODO`.

The steps are detailed in the script, but here's an overview with links to relevant documentation on each task:

* [Download](/docs/python/remote_files.md) and save a local copy of the FDIC failed banks CSV using the `requests` library. You don't need to use the CSV module for this step. It's preferable to just use standard [file writing techniques][].

[file writing techniques]: ../docs/python/file_io.md#writing-files

* Read the local `banklist.csv` and generate a new CSV called `failed_banks_ca.csv`. You must use the [csv module](/docs/python/csv.md) for these steps. The file must contain only failed banks in California. It should have the same header row and columns as the source data. And you must convert the `Closing Date` values to a date formatted as `YYYY-MM-DD` (e.g. `2020-01-29`). You'll need to use [strptime](https://www.programiz.com/python-programming/datetime/strptime) and [strftime](https://www.programiz.com/python-programming/datetime/strftime) from the datetime module to perform the conversion.
* Print a count of failed banks in California to the shell. You must print the following text: `There are X failed banks in CA`, replacing the `X` with the correct count. For example: `There are 41 failed banks in CA`. The count (`X`) should be generated dynamically. In other words, the value of `X` should be replaced using code; do **not** hard-code the count directly in the text. For this step, you'll need the `print` function, of course. You might also find it helpful to learn about [string formatting][].

[string formatting]: https://realpython.com/python-string-formatting/#3-string-interpolation-f-strings-python-36

### Important notes

* You must **write this code exclusively in Python**. You should **not** create a Bash script containing Unix commands, nor should you "shell out" from Python to Unix commands.
* You *must* use standard [file writing techniques][] and the [CSV module](/docs/python/csv.md). You should *not* use `pandas` or other third-party libraries.
* Please do *NOT* use file paths in your code that are specific to your machine. For example, do **not** use `~/Desktop/code/fdic/scripts/banklist.csv` in your Python script. Instead, simply use the base name of the file (`banklist.csv`). This will make your code more portable so that instructors can download your code and run it. **Points will be deducted if user-specific paths are included.**

### Advice

* We've provided you with a starter script with guidance on specific techniques. But we're throwing a lot of new skills at you with this assignment. Make sure you take the time to practice each of these skills in the interactive Python interpreter before trying to apply them in the final script. You can always copy/paste the code from the interpreter to your script as you figure out solutions. So be sure to fire up `ipython` as you work through the assignment!
* Use `print` statements in your script to get visibility into the code.

### Submitting

To submit the assignment, you must: 

* Use [DataKit](/docs/datakit.md) to create a new code project called `FDIC python`
* Save your completed version of [`failed_banks_ca.py`](/code/failed_banks_ca.py) to the project's `scripts/` directory
* Push your code to GitHub
* Submit the URL to your GitHub repo via Canvas

As a reminder, here's how to create the new project folder:

```
# Navigate to wherever you store your code
# For example:
cd ~/Desktop/code

# Crate the project
datakit project create
```

Follow the DataKit prompts to create a project named "FDIC Python", which should generate a new project folder on your machine called `fdic-python`. This folder will be connected automatically to an identically named GitHub project.

Below is the standard workflow to save and push code to GitHub.

```
cd ~/Desktop/code/fdic-python

# Install the requirements
pipenv install

# Activate the shell
pipenv shell

# Save and push your code
invoke code.push
```

For reminders on how to work with DataKit, see [here](/docs/datakit.md).

**NOTE:** Grading for this assignment will be based both on the script itself as well as your attention to detail. For example, points will be deducted if the script is not named correctly and placed in the proper folder of the project.
