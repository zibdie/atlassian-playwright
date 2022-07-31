FROM zibdie/atlassian-playwright:3-test
ENV CI true

WORKDIR /tmp/script

COPY . /tmp/script

RUN yarn install
RUN yarn run test:e2e