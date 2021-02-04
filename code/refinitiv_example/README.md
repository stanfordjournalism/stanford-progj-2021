# Refinitiv Entity Extraction

- [Overview](#overview)
- [Obtain an API Key](#obtain-an-api-key)
- [Create environment variable](#create-environment-variable)
- [Additional resources](#additional-resources)

## Overview

> Note, the Refinitiv API, by Thomson Reuters, was formerly known as OpenCalais.

The [Python script in this directory](extraction_example.py) demonstrates how to call the [Refinitiv API][] to perform [entity extraction][]. The example uses a paragraph of text from an FDA medical device [recall announcement][].


## Obtain an API Key

Before using this code, you must [register for a Refinitiv account][].

> **NOTE:** Do this right away, as the process can take up to 24 hours for review and approval.

Once you've received confirmation for your Refinitiv account, you can sign up for an API key by logging in to your new account at <https://permid.org/>. The process of logging in to permid.org for the first time (using your Refinitiv credentials) should trigger an email containing your API key.

Alternatively, once logged in, you can obtain your API key by clicking on the "APIs" link in the upper right. Then click on the big orange "Display my API token" button (shown below).

![Locate Refinitiv API Key](../../static/opencalais_get_api_key.png)

Copy the long string of characters next to `Your Key`.

## Create environment variable

Next, create the below shell environment variable by [exporting it][] in `~/.bash_profile` and *substituting your API key*:

> **Linux users should add the export to to `~/.bashrc`**

```
# ~/.bash_profile
export OPENCALAIS_API_KEY="YOUR_API_KEY"
```

You can now look up the API key in Python code using `os.environ['OPENCALAIS_API_KEY']`, as demonstrated in this [example script](calais_example.py).

## Additional Resources

* [Refinitiv Demo][]
* [A Practical Approach to Understanding and Ingesting Intelligent Tagging Output for Your Use Case][]


[Refinitiv API]: https://developers.refinitiv.com/en/api-catalog/open-perm-id/intelligent-tagging-restful-api
[entity extraction]: https://en.wikipedia.org/wiki/Named-entity_recognition
[exporting it]: /docs/python/using_env_vars_for_secrets.md
[Refinitiv Demo]: https://permid.org/onecalaisViewer
[recall announcement]: https://www.fda.gov/MedicalDevices/Safety/ListofRecalls/ucm630614.htm
[register for a Refinitiv account]: https://developers.refinitiv.com/en/api-catalog/open-perm-id/intelligent-tagging-restful-api
[A Practical Approach to Understanding and Ingesting Intelligent Tagging Output for Your Use Case]:  https://developers.refinitiv.com/en/article-catalog/article/a-practical-approach-to-understanding-and-ingesting-intelligent-tagging-output
