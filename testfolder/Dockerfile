FROM zibdie/atlassian-playwright:test
ENV CI true

WORKDIR /tmp/script

COPY . /tmp/script

RUN yarn install
RUN yarn run test:e2e