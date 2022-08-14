# zibdie/e2e Playwright Version

This image does all this for you so you only need to install Playwright from your package.json (or requirements.txt) without worrying about redownloading Playwright's custom browsers or system dependancies.

### latest tag

The `latest` tag uses `ubuntu:20.04` as its base image and has Python 3.8 [with pip] and Node 16 [with npm and yarn package managers] installed.

### atlassian tag

The `atlassian` tag uses `atlassian/default-image:3` as its base image so you can run the image easily in your Atlassian Bitbucket pipeline. If you wish to see what preinstalled software the atlassian base comes with, see: https://support.atlassian.com/bitbucket-cloud/docs/use-docker-images-as-build-environments/

## Why Should I Use This Image?

If you use Playwright in your end-to-end testing pipeline, you should be aware that you must run the "npx playwright install" command [or its Python equivalent] on every pipeline run. You must also install all system dependancies Playwright requires [see: https://playwright.dev/docs/cli#install-system-dependencies ]. This all takes precious build time.

This docker image has all that taken care of so you can get to testing immediately.

## How new/updated are these images?

Each supported image has a CI/CD pipeline set to run a cron job every week. Therefore, you will always have the latest version of Playwright and therefore, the latest version of Google Chrome, Mozilla Firefox, and Webkit. Each build is tested to ensure it works as expected.

If you wish to see the browser versions that Playwright currently uses, see: https://github.com/microsoft/playwright#documentation--api-reference

## Where can I report an issue, ask a question, or make an improvement?

You can do all that on the image's official repository: https://github.com/zibdie/e2e
