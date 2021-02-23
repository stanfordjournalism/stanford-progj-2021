# First Python Notebook

- [Overview](#overview)
- [Setup](#setup)
- [Starting Jupyter Lab](#starting-jupyter-lab)
- [Submissions](#submissions)

## Overview

For this assignment, we'll work through the [First Python Notebook][]. which introduces the [Jupyter](https://jupyter.org/) interactive coding environment and basic data wrangling and analysis with [pandas][].

The tutorial, created by data journalist Ben Welsh of The Los Angeles Times, applies these tools to some California campaign finance data. Welsh provides both written narrative *and* video tutorials. If you have trouble understanding the written portions, please review the short videos for extra help.

For our class, we'll slightly diverge from the tutorial in terms of setting up a code directory and virtual environment.

Please carefully work through the [Setup](#setup) instructions below, and then follow the instructions for [Starting Jupyter](#starting-jupyter). **You should ignore all instructions in the tutorial related to setting up/starting a virtual environment, as well as "pip install" of packages.** We'll be using our standard [DataKit](../docs/datakit.md) and `pipenv` workflow to handle these. Just focus on the core content related to working with Jupyter and pandas.

**Work through all the sections starting from [Chapter 2: Hello Notebook](https://www.firstpythonnotebook.org/notebook/index.html).**

Note that [Chapter 12: Hello remix](https://www.firstpythonnotebook.org/remix/index.html) is a slight detour that demonstrates how to repurpose the analysis code for other California propositions. It's fine to skip entering the code for this section. Or if you do enter the code, make sure to restore the original propisition to complete the analysis in [Chapter 13: Hello charts](https://www.firstpythonnotebook.org/charts/index.html).


## Setup

We'll depart from the tutorial's setup instructions for virtual environments and project setup. Instead please follow the below workflow. **Please pay careful attention to the values entered for [DataKit](../docs/datakit.md) prompts below.**

```
# Navigate to your code directory, e.g.
cd ~/Desktop/code

# Use datakit to create a new project
~/code> datakit project create
project_name []: First Python Notebook
```

Once the project is created, navigate to the new directory and install all the libraries you'll need for the tutorial.

> Note: the tutorial has you install them in various sections, but we'll install everything up front.

```
cd first-python-notebook
pipenv install jupyterlab pandas altair
```

[First Python Notebook]: http://www.firstpythonnotebook.org/
[pandas]: https://pandas.pydata.org/pandas-docs/stable/user_guide/index.html#user-guide

## Starting Jupyter Lab

Once you've created a project using the above [Setup](#setup) instructions, you can start up Jupyter using the following:

```
# Navigate to the project if you're not already there
cd ~/Desktop/code/first-python-notebook

# and activate the environment
pipenv shell

# Start jupyter (this should open a 
# a new page in your web browser)
jupyter lab
```

## Submissions

Once you have completed the tutorial, you should save and push your work to GitHub using our standard workflow.

```
cd ~/Desktop/code/first-python-notebook
pipenv shell
invoke code.push
```

Then submit the URL to the GitHub project via Canvas.