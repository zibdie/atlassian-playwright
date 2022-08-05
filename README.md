# zibdie/e2e

When creating frontend applications, developers often use many different types of softwares to do our front end testing. Ensuring all these libraries were up to date and compatible took time.

We also ran into the problem where build time is being spent actually installing the testing libraries and their browsers (such as Google Chrome and Mozilla Firefox) which only increased build time and costs.

This repository containers Docker images to help you with your frontend end-to-end testing. It contains the most popular frontend end-to-end testing frameworks with all dependancies installed. The next time you run your pipeline, your testing will spin up fast.

## Which end-to-end libraries are included?

- Microsoft Playwright
- Puppeteer [coming soon]
- Selenium [coming soon]

## How new/updated are these images?

Each supported image has a CI/CD pipeline set to run a cron job every week. Therefore, you will always have the latest version of your chosen library and all dependancies necessary for it. Each build is tested to ensure it works as expected.

## Some of these images has pretty big file sizes! How come?

These images were meant to include all necessary tools in your pipeline, hence the size. The reason why I did this as it eliminates adding time to the build process as most services charge you by build time.
