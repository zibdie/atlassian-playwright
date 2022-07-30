# zibdie/atlassian-playwright:3

This is the official atlassian/default-image:3 with [Microsoft Playwright](https://playwright.dev/) support out of the box. You will not need to worry about setting up system dependancies or custom Playwright browser versions.

## Why Should I Use This Image?

If you use Playwright in your end-to-end testing pipeline, you should be aware that you must run the "npx playwright install" command [or its Python equivalent] on every pipeline run. You must also install all system dependancies Playwright requires [see: https://playwright.dev/docs/cli#install-system-dependencies ]. This all takes precious build time.

This image does all this for you so you only need to install Playwright from your package.json (or requirements.txt) without worrying about redownloading Playwright's custom browsers or system dependancies.

This Docker image is based on

| name                      | platform     | applications available out-of-the-box |
| ------------------------- | ------------ | ------------------------------------- |
| atlassian/default-image:3 | Ubuntu 14.04 | wget                                  |
| **Recommended**           |              | xvfb                                  |
|                           |              | curl                                  |
|                           |              | ssh                                   |
|                           |              | zip                                   |
|                           |              | jq                                    |
|                           |              | tar                                   |
|                           |              | parallel                              |
|                           |              | git: 2.25.1                           |
|                           |              | node: 14.17.5                         |
|                           |              | npm: 6.14.14                          |
|                           |              | nvm: 0.38.0                           |
|                           |              | python: 3.8.10                        |
|                           |              | gcc: 9.3.0                            |
|                           |              | ant: 1.10.7                           |

You can find the Atlassian support article here: https://support.atlassian.com/bitbucket-cloud/docs/use-docker-images-as-build-environments/

## Why Should I Use This Image?

If you use Playwright in your end-to-end testing pipeline, you should be aware that you must run the "npx playwright install" command [or its Python equivalent] on every pipeline run. You must also install all system dependancies Playwright requires [see: https://playwright.dev/docs/cli#install-system-dependencies ]. This all takes precious build time.

## How new/updated are these images?

Each CI/CD script has a cron job set to run every week. Therefore, you will always have the latest version of Playwright and therefore, the latest version of Google Chrome, Mozilla Firefox, and Webkit.

If you wish to see the browser versions that Playwright currently uses, see: https://github.com/microsoft/playwright#documentation--api-reference

## Where can I report an issue, ask a question, or make an improvement?

You can do all that on the image's official repository: https://github.com/zibdie/atlassian-playwright
