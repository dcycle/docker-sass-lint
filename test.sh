set -e
docker pull node
docker pull dcycle/sass-lint
docker build -t local-dcycle-sass-lint-image .

docker run -v $(pwd)/example:/app/code dcycle/sass-lint --help
docker run -v $(pwd)/example:/app/code dcycle/sass-lint -v -q -c /sass-lint-rules.yml /app/code/some-sass-file.scss
docker run -v $(pwd)/example:/app/code local-dcycle-sass-lint-image --help
docker run -v $(pwd)/example:/app/code local-dcycle-sass-lint-image -v -q -c /sass-lint-rules.yml /app/code/some-sass-file.scss
