# Atlassian Playwright

Playwright, a End-to-End testing tool by Microsoft, has helped me run front end testing before pushing code to its destined stage. However, I have noticed a lot of time has spent attempting to download the libraries & browsers for Playwright, which eats up pipeline time and cost.

This Docker image uses the official Atlassian Docker image as its base and installs 'yarn', the second most used package installer for Node-based applications, and Playwright for both Python3 and NodeJS.

## Why Should I Use This Image?

If you use Playwright in your end-to-end testing pipeline, you should be aware that you must run the "npx playwright install" command [or its Python equivalent] on every pipeline run. You must also install all system dependancies Playwright requires [see: https://playwright.dev/docs/cli#install-system-dependencies ]. This all takes precious build time.

This image does all this for you so you only need to install Playwright from your package.json (or requirements.txt) without worrying about redownloading Playwright's custom browsers or system dependancies.

## What Is the Atlassian Image Based On?

You can see what what the base Atlassian image is built on by viewing their documentation here:
https://support.atlassian.com/bitbucket-cloud/docs/use-docker-images-as-build-environments/

## Which version should I use?

Each image has a naming scheme like this:

```
zibdie/atlassian-playwright:<Atlassian Default Image Version>
```

You can find the _\<Atlassian Default Image Version\>_ at the link in the **What Is the Atlassian Image Based On?** section.

If you want to use the latest recommended version from Atlassian, simply use `zibdie/atlassian-playwright:latest`

**NOTICE:** You should never use any tag that has the word "_test_" in it, such as `zibdie/atlassian-playwright:latest-test`. Usually you would not find it but in the rare chance you see it, just know this was created by the pipeline for testing purposes and will be removed after the test completes successfully.

## What is the difference between latest vs version number?

Any tag with "latest" uses the latest <u>**recommended**</u> version from the Atlassian Base Image, **not** the `atlassian:default-image:latest`, which actually is just `atlassian:default-image:1` but used for backward compatibility purposes.

If you use the `zibdie/atlassian-playwright:latest` tag, you are responsible for ensuring your code works with the latest base version from Atlassian.

## How new/updated are these images?

Each supported image has a CI/CD pipeline set to run a cron job every week. Therefore, you will always have the latest version of Playwright and therefore, the latest version of Google Chrome, Mozilla Firefox, and Webkit.

If you wish to see the browser versions that Playwright currently uses, see: https://github.com/microsoft/playwright#documentation--api-reference

## Does This Image Only Work In Atlassian Bitbucket Pipelines?

Technically it should not but you should understand there will be little to no support from Atlassian so proceed with caution if you wish.
