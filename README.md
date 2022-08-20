# zibdie/e2e

When creating frontend applications, developers often use many different types of softwares to do our front end testing. Ensuring all these libraries were up to date and compatible took time.

We also ran into the problem where build time is being spent actually installing the testing libraries and their browsers (such as Google Chrome and Mozilla Firefox) which only increased build time and costs.

This repository containers Docker images to help you with your frontend end-to-end testing. It contains the most popular frontend end-to-end testing frameworks with all dependancies installed. The next time you run your pipeline, your testing will spin up fast.

## Which end-to-end libraries are included?

- Microsoft Playwright
- Puppeteer [coming soon]
- Selenium [coming soon]
- Cypress [coming soon]

## How new/updated are these images?

Each supported image has a CI/CD pipeline set to run a cron job every week. Therefore, you will always have the latest version of your chosen library and all dependancies necessary for it. Each build is tested to ensure it works as expected.

You can see when these Docker images were last built by checking Docker Hub: https://hub.docker.com/r/zibdie/e2e

## Some of these images has pretty big file sizes! How come?

These images were meant to include all necessary tools in your pipeline, hence the size. The reason why I did this as it eliminates adding time to the build process as most services charge you by build time instead of space. You can see it from the pricing models of many CI/CD services

* https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions
* https://www.atlassian.com/software/bitbucket/pricing [See 'build minutes' section]
* https://about.gitlab.com/pricing/

Therefore, it is in your best interest to ensure your base image includes everything you need to ensure you are not wasting precious build minutes installing dependancies before your real code runs. This docker image includes everything you need.
