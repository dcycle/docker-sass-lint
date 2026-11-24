[![GitHub Actions](https://github.com/dcycle/docker-jenkins/actions/workflows/config.yml/badge.svg)](../../actions/workflows/config.yml)

Lint SASS with [SASS lint](https://www.npmjs.com/package/sass-lint).

For example:

    docker run --rm -v $(pwd)/example:/app/code dcycle/sass-lint:1 --help
    docker run --rm -v $(pwd)/example:/app/code dcycle/sass-lint:1 -v -q -c /sass-lint-rules.yml /app/code/some-sass-file.scss
    docker run --rm -v $(pwd)/example:/app/code dcycle/sass-lint:1 -v -q -c /sass-lint-rules.yml /app/code/some-sass-file-with-errors.scss

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/sass-lint/).
