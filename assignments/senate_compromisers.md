# Senate Compromisers

- [Overview](#overview)
- [Setup](#setup)
- [Coding details](#coding-details)
- [Important notes](#important-notes)
- [Submitting](#submitting)

## Goals

* Learn how to use an API.
* Use Python functions and sorting in the context of a script.

## Overview

There's much talk of [bipartisanship][] as the new Biden presidency gets under way.

[bipartisanship]: https://www.usnews.com/news/politics/articles/2021-02-01/biden-opens-bipartisan-dialogue-with-republicans-on-coronavirus-relief

For this exercise, let's say that you, the enterprising data reporter, wanted to identify senators who are most likely to work with the other side of the aisle on legislation.

Anecdotally you know of "middle-of-the-road" or moderate senators in both parties, but you want to apply a more rigorous approach to create a longer list of Senators who may be most open to supporting bipartisan bills.

ProPublica, a nonprofit investigative news organization, provides a [Congress API][] with a [Members "endpoint"][] that offers one possible window into which senators might be most open to compromise via the "votes against party" data point (they also provide "votes with party").

For this exercise, let's assume that senators who most often vote against their party are also most likely to be open to compromise.

[Congress API]:https://www.propublica.org/datastore/api/propublica-congress-api
[Members "endpoint"]: https://projects.propublica.org/api-docs/congress-api/members/

Your task is to find the five members of both parties who are **most likely** to break ranks.

Below are detailed instructions on how to proceed.

## Setup

### Get an API key

Sign up for a [ProPublica API Key](https://www.propublica.org/datastore/api/propublica-congress-api). In the web registration form, state that you plan to use the API for "data journalism course work at Stanford University". **Make sure you stash away the key and do not lose it!** You'll need the key for the next assignment!

### Store the API key

Store the following code in `~/.bash_profile` if you're on a Mac or, if you're on Linux, in `~/.bashrc`. You'll need to replace `your_api_key` with the actual key: 

> Here's how to [edit hidden files on a Mac](/docs/tech_faq.md#how-do-i-edit-hidden-files-on-a-mac).

```
# Below line goes in your ~/.bash_profile
export PROPUBLICA_API_KEY="your_api_key"
``` 

After adding the key, you should test that it is accessible by opening a new shell and executing the following command: 

```
printenv | grep PROPUBLICA
PROPUBLICA_API_KEY=your_api_key
```

If you have problems with this step, please refer to [Using environment variables to store secrets](/docs/python/using_env_vars_for_secrets.md) or reach out for help.

## Create a datakit project

Create a new [DataKit](../docs/datakit.md) project named `Senate Compromisers`. This should produce a local directory and related GitHub project called `senate-compromisers`.

```
cd ~/Desktop/code
datakit project create

# Install the "requests" library
# in the new project
cd senate-compromisers
pipenv install requests
```

Download the [`senate_compromisers.py`](/code/senate_compromisers.py) starter script and save it to your project's `scripts/` directory. Remember, you need to click the "Raw" button on GitHub to get access to a plain-text version of the file for download.

Don't forget, when testing your script on the command line, you should always activate the virtual environment first:

```
# Activate the environment
cd senate-compromisers/
pipenv shell

# Run the script
cd scripts/
python senate_compromisers.py
```

> See the docs on [installing and using libraries](/docs/python/libraries.md#installing-and-using-libraries) for additional background on the virtual environment workflow.

## Coding details

Now you're ready to flesh out the script. Below are the requirements:

* Use the `requests` library to get data for all members of the current senate from the ProPublica API. We've actually provided some starter code for this step, but you should review the following to ensure you understand the code:
  * The Propublica API docs for [Authentication](https://projects.propublica.org/api-docs/congress-api/#authentication) and [Members](https://projects.propublica.org/api-docs/congress-api/members/)
  * The `requests` library docs on how to make a web request with [custom headers](https://2.python-requests.org/en/master/user/quickstart/#custom-headers)
* Using the members data, find the 5 members of both parties with the highest "votes against party" (or lowest "votes with party") percentages.
* Print a list of 5 Democrats followed by 5 Republicans who are most likely to break ranks with their parties. You must print the name of the party before listing its members below it. Within each group, you must sort members from most to least likely to vote against their party. The line you print for each member should include first and last name, state and the score (e.g. "votes against party"). *Hint: You'll need [string formatting](https://www.w3schools.com/python/python_string_formatting.asp) and [sorting techniques](https://docs.python.org/3/howto/sorting.html) to do this work.*

> The output should look something like below (it won't match precisely since voting records and congressional membership change over time).

```
Senators most likely to break ranks:

Democrat
--------
* Kirsten Gillibrand (NY) votes against the party 30.36% of the time.
* Kamala Harris (CA) votes against the party 27.57% of the time.
* Edward Markey (MA) votes against the party 27.14% of the time.
* Joe Manchin (WV) votes against the party 25.75% of the time.
* Kyrsten Sinema (AZ) votes against the party 23.5% of the time.

Republican
----------
* Rand Paul (KY) votes against the party 19.9% of the time.
* Mike Lee (UT) votes against the party 15.32% of the time.
* Susan Collins (ME) votes against the party 11.33% of the time.
* Patrick Toomey (PA) votes against the party 7.89% of the time.
* Ted Cruz (TX) votes against the party 7.34% of the time.

```

## Important notes

* The Senate has a few Independents who are denoted in the ProPublica members data with an `ID` value for the `party` field. In a real-world analysis, we'd likely want to take Independents into account. For this exercise, it's fine to skip the Independents.
* Be sure to work through the Python readings on [sorting and functions](python_functions_sorting_web_basics.md). You'll need a good feel for them to complete this assignment!
* You must adhere to the best practices laid out in the [Art of Writing Functions](/docs/python/art_of_functions.md). Specifically, you must create well-named functions for each distinct step in the process described above, and use a "main" function at the top of your script to orchestrate all the other functions. The [`senate_compromisers.py`](/code/senate_compromisers.py) script that we've provided starts you off on this process, so please be sure to use it.


## Submitting

As always, submission is a two-step process.

```
# Push your code up to GitHub
cd senate-compromisers/
pipenv shell
invoke code.push
```

Then head over to Canvas and submit the GitHub URL to the project.
