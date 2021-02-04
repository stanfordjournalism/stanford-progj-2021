# Refinitiv Entity Extraction

- [Overview](#overview)
- [Obtain an API Key](#obtain-an-api-key)
- [Create environment variable](#create-environment-variable)
- [Additional resources](#additional-resources)

## Overview

> Note, the Refinitiv API, by Thomson Reuters, was formerly known as OpenCalais.

The [Python script in this directory](extraction_example.py) demonstrates how to call the [Refinitiv API][] to perform [entity extraction][]. The example uses a paragraph of text from an FDA medical device [recall announcement][].


## Obtain an API Key

> Fair warning, the process to obtain an API key is a bit convoluted. Please reach out if you get stuck or have questions.

Before using this code, you must [register for a Refinitiv account][]. Be sure to:

* Fill in all of the fields, including title
* Place a `+` in front of the phone number, and don't use dashes
* Click the Terms and Conditions, do **not** manually check the box.

After completing the registration form, you should receive a verification email. Click the provided link.

> NOTE: Refinitiv warns it can take up to 24 hours for review and approval of the registration. In practice, it usually takes about 5-10 minutes.

Once you complete the above step, Refinitiv will send *yet another* email directing you to set up a password for your new account.

Once you receive the password setup email, follow the instructions to finish creating your login credentials. You'll be directed to log in to the new site. It's fine to log in, but to complete the process of getting an API key, we'll have to go to one last site (I know, bear with us).

Using the Refinitiv account credentials you just created (email and password), sign up for an API key by logging in to your new account at <https://permid.org/>. You may receive some prompts about how the login process has changed. Just click "login" when prompted. You should be redirected to your new Refinitiv/PermID home page. 

The process of logging in to permid.org for the first time (using your Refinitiv credentials) should trigger an email containing your API key. Alternatively, once logged in to the site, you can obtain your API key by clicking on the "APIs" link in the upper right. Then click on the big orange "Display my API token" button.

Copy the long string of characters, which we'll use in the next step.

## Create environment variable

Next, create the below shell environment variable by [exporting it][] in `~/.bash_profile` and *substituting your API key*. Linux users should add the export to to `~/.bashrc`.

> If you need help opening hidden "dot" files on a Mac, see [here](/docs/tech_faq.md#how-do-i-edit-hidden-files-on-a-mac).

```
# ~/.bash_profile (Mac) or ~/.bashrc (Linux)
export OPENCALAIS_API_KEY="YOUR_API_KEY"
```

You can now look up the API key in Python code using `os.environ['OPENCALAIS_API_KEY']`, as demonstrated in this [example script](extraction_example.py).

## Additional Resources

* [Refinitiv Demo][]
* [A Practical Approach to Understanding and Ingesting Intelligent Tagging Output for Your Use Case][]


[Refinitiv API]: https://developers.refinitiv.com/en/api-catalog/open-perm-id/intelligent-tagging-restful-api
[entity extraction]: https://en.wikipedia.org/wiki/Named-entity_recognition
[exporting it]: /docs/python/using_env_vars_for_secrets.md
[Refinitiv Demo]: https://permid.org/onecalaisViewer
[recall announcement]: https://www.fda.gov/MedicalDevices/Safety/ListofRecalls/ucm630614.htm
[register for a Refinitiv account]: https://developers.refinitiv.com/en/register
[A Practical Approach to Understanding and Ingesting Intelligent Tagging Output for Your Use Case]:  https://developers.refinitiv.com/en/article-catalog/article/a-practical-approach-to-understanding-and-ingesting-intelligent-tagging-output
