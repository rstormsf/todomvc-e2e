
[![CircleCI](https://circleci.com/gh/rstormsf/todomvc-e2e.svg?style=svg&circle-token=e40da9cc3cfc64583d71d82e582506527c16e590)](https://circleci.com/gh/rstormsf/todomvc-e2e)


How to run:

```

bundle install
CI=true BROWSERSTACK_ACCESS_KEY=YOUR_KEY BROWSERSTACK_USERNAME=YOUR_NAME bundle exec cucumber
LOCAL=true bundle exec cucumber

``