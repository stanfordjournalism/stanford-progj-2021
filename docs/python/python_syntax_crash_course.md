
# Python Syntax Crash Course

- [Overview](#overview)
- [Upgrade your shell](#upgrade-your-shell)
- [Open and close the shell](#open-and-close-the-shell)
- [Python basics](#python-basics)
- [Code challenge](#code-challenge)

## Overview

This page provides a whirlwind tour of some Python basics, including basic data types,
variables, loops and conditionals.

We'll run the code in an [interactive Python shell](https://pythonprogramminglanguage.com/repl/) - an environment that lets you test Python code and immediately see the results. It's low technical overhead -- the shell is available on any machine with Python installed -- and quite handy for quick-and-dirty code experimentation.

## Choose a shell

It's fine to do this tutorial using the normal interactive Python shell. Just open a Terminal and type `python` and you're ready to go.

Alternatively, you can install [Ipython][] for an improved version of the shell that will make life a bit easier (it includes code highlighting and other niceties).

To install Ipython, open up a termina and use [pip][], a tool for installing third-party Python libraries:

> Depending on your Python setup, you may need to use `pip3` below

```
pip install ipython
```

## Open and close the shell

Open a terminal and type `python` or `ipython`.

You should now be in the interactive shell and see text that resembles the below.

> Note that the Ipython shell will look slightly different

```
Python 3.7.8 (default, Jul 17 2020, 15:36:36)
[Clang 11.0.3 (clang-1103.0.32.62)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

To quit the shell, type `exit()` and hit `return`. Or press `CTRL-D`.


## Python basics

OK, now for a minimalist tour of some Python basics. 

> Be sure to type the below commands into your shell in order to begin internalizing
the syntax.

Data types are among the most basic building blocks of a programming language. Like other langauges, Python has a variety of basic data types, including integers, floating-point numbers and strings.

Type the below values into the interactive shell.

```
>>> 2
2
>>> 2.5
2.5
>>> "this is a string in double quotes"
>>> "this is a string in double quotes"
'this is a string in double quotes'
>>> 'this is a string in single quotes'
'this is a string in single quotes'
```

You can write "expressions" that combine values of varying data types with operators. 

Here's a math example:

```
>>> 2 + 3
5
>>> 2 * 3
6
```

Here's a string example:

```
>>> 'cats' + 'dogs'
'catsdogs'
>>> 'cats' + ' and ' + 'dogs'
'cats and dogs'
```

Invariably, you'll run into errors. They can be jarring at first, but they're quite helpful. [Learn to love them](embracing_errors.md).

```
>>> 5 / 0
Traceback (most recent call last):
  File "<ipython-input-15-adafc2937013>", line 1, in <module>
    5 / 0
ZeroDivisionError: division by zero

>>> 'cats' + 5
Traceback (most recent call last):
  File "<ipython-input-16-12ef4a5d9d54>", line 1, in <module>
    'cats' + 5
TypeError: can only concatenate str (not "int") to str
```

You can compare values in Python.

```
>>> 1 > 0
True
>>> 1 > 2
False
>>> 'this' == 'this'
True
>>> 'this' == 'that'
False
```

Things start to get interesting when we use variables. Think of variables as storage containers for values.

```
>>> height = 10
>>> width = 5
>>> area = height * width
>>> area
50
>>> feline = 'cat'
>>> canine = 'dog'
>>> feline + ' and ' + canine
'cat and dog'
```

You can change the value of variables.

```
>>> feline = 'dog?'
>>> print(feline)
dog?
>>> x = 1
>>> x = x + 1
>>> x
2
```

The ability to store values in variables allows us to compose increasingly sophisticated programs, by storing the result of one step and using it another part of the code. More on that later.

Python includes some handy built-in functions that will come in handy. These are helpful bits of code that can perform certain operations when passed a value.

The `len` function lets you count the length of certain data types such as strings.

```
>>> len('cat')
3
```

The `print` function...well...prints things. This one is extremely handy, especially as we start writing larger Python scripts. Let's print that `area` variable we created earlier.

```
>>> print(area)
50
```

Lists, or arrays if you're coming from some other fancy programming language, allow you to store a sequence of items. You can create a list by surrounding a series of values in
square brackets `[]`.

```
>>> [1,2,3]
[1, 2, 3]
```
Lists can store values of different data types.

```
>>> ['three', 2, 'one']
['three', 2, 'one']
```

You can create an empty list and store it in a variable.

```
>>> numbers = []
>>> numbers
[]
```

Then, you can add data to the list.

```
>>> numbers.append(1)
>>> numbers.append(2)
>>> numbers.append(3)
>>> numbers
[1, 2, 3]
```

But wait, it gets better! You can ["loop"](https://www.w3schools.com/python/python_for_loops.asp) over the items in a list and perform actions on each one.

```
>>> for number in numbers:
...     print(number * 2)
...
2
4
6
```

A few key things to note about the above code:

* `number` is just a variable name that *automatically* stores each integer in the list as we "iterate" through the items, in order. This allows us to use the value in the context of the loop. 
* The above code effectively means, `for <variable> in <list>:`, do stuff. There's nothing special about the name `number` for the variable. We could have just as easily said `for hamster in numbers`. But that would be strange.
* Note the colon after `numbers:` and the indentation of the `print` statement. Python uses indentation (4 spaces by convention) to group together related code into a "block". Above, any code that was indented to the same level as the `print` statement would take place in the context of the loop.

Let's add some more statements to the "block" inside the "for" loop. Remember, these operations are repeated for each integer in the list:

```
>>> for number in numbers:
...     times_2 = number * 2
...     minus_1 = number - 1
...     print(number, '|', times_2, '|', minus_1)
...
1 | 2 | 0
2 | 4 | 1
3 | 6 | 2
```

Above, we printed three separate items for each integer: the original value, the value multliplied by 2, and the value minus 1. 

Note that the original number did not change despite the math operations performed. That's because we did not overwrite the value inside the indented block of code. We essentially grabbed the value stored in the variable, performed a few math operations on it and stored those new values in new variables (`times_2` and `minus_1`) -- all without changing the original value stored in `number`. That value only changes as we move to the next item in the list. The "for" loop automatically assigns the next integer to the `number` variable.

We also haven't changed the original list of `numbers`:

```
>>> len(numbers)
3
>>> numbers
[1, 2, 3]
```

Another important feature of Python is the ability to apply [conditional logic](https://www.w3schools.com/python/python_conditions.asp). Let's say we wanted to only print number greater than 1.

```
>>> for number in numbers:
...     if number > 1:
...         print(number)
...
2
3
```

We've only covered a fraction of Python syntax, but we're already approaching the point where we can start doing some useful work.

## Code Challenge

Try applying the skills we've covered so far to the following code challenge. You should continue writing the code in the interactive Python shell.

* Loop over this list:  `animals = ['cat', 'dog', 'canary', 'chihuaha', 'narwhal']`
* If the animal's name starts with the latter 'c', then change the name to all capital letters and print the all-caps name.

For this exercise, you'll need to use functionality that is built into Python strings. Check out these docs on [stirng methods](https://www.w3schools.com/python/python_strings_methods.asp) to figure out which ones you'll need. Depending on how you approach the problem, you may also need to learn how to [slice strings](https://www.w3schools.com/python/python_strings_slicing.asp) (i.e. select one or more characters from a string).


[Ipython]: https://ipython.readthedocs.io/en/stable/
[pip]: https://pip.pypa.io/en/stable/