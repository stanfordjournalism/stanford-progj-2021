# Grading

- [Overview](#overview)
- [Point deductions](#point-deductions)
- [Easy fix for style](#easy-fix-for-style)
- [How to succeed on assignments](#how-to-succeed-on-assignments)

## Overview

> Grading is generally based on the [College Board scale](https://pages.collegeboard.org/how-to-convert-gpa-4.0-scale), with 97-100 representing an A+.

This class emphasizes the importance of producing readable, reusable and reliable code. 

**Technical assignments are therefore not graded purely on the accuracy of output or results. While correct output/results are important, code *quality* is also an important consideration.**

A Python script that produces the correct result is *not* guaranteed an A+. On the flip side, a script that is broken or produces an *incorrect* result may still receive a passing or high grade depending on the severity of the bugs and other important factors.

## Point deductions

Below are some common ways to lose points on technical assignments:

* Not following instructions. For example:
  * Failing to use the `csv` library when required to do so (or using it when instructed not to)
  * Not naming files or projects correctly
  * Not creating functions when asked to do so
* Not installing dependencies such as `requests`
* "Installing" dependencies that are built into Python (e.g. 'csv' or 'datetime' should *not* appear in Pipfile)
* Broken/incomplete code
* Incorrect output or results from a script or analysis
* Unnecessarily complex code. For exampple:
  * Duplicative functions that could easily be simplified into a single function
  * Use of `range` in looping when a simple `for <variable> in <iterable>` suffices
* Messy or hard-to-read code:
  * Unused variables
  * Single-letter variables
  * Poorly named functions (e.g. don't do what their name implies) 
  * Extraneous print statements (i.e. those used for debugging but not needed for final results)
* Not following style/syntax conventions:
  * Non-standard indentation (8 instead of 4 spaces in Python)
  * Library imports not at top of the module
  * Using camelCase instead of snake_case variables or function names
  * Non-portable file paths (e.g. `/Users/somebody/path/to/myscript.py`)
  * Not spacing correctly between function definitions

The above is not an exhaustive list of reasons for point deductions, but are among the most common.

## Pre-submission checklist

Just as you would review a draft of a paper before submitting it in a philosophy or history class, you should carefully review your code and its outputs (if any) before submitting it for this class. Use the above items as a checklist to make sure you've produced code that is readable, reproducible and reliable.

One easy way to guard against style-related point deductions is to install and use a code formatting tool such as [black](https://github.com/psf/black). This tool will automatically reformat your Python code to follow standard Python style conventions.

And of course, make sure you review any outputs produced by your script(s). While incorrect outputs or calculations don't guarantee a low or failing grade, they are typically the type of error that will cost the most points. 

## How to succeed on assignments

Lastly, we want to emphasize that we're here to help. Most assignments are due a week or more after their release. We encourage you to begin them as early as possible and reach out for help along the way. We're happy to nudge you toward bug fixes, talk through any confusion on key concepts, and offer other assistance to help you achieve a good grade.

We're available during office hours and outside of class, either by appointment or via Slack.