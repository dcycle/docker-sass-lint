set -e
docker pull node
docker build -t local-dcycle-sass-lint-image .

docker run -v $(pwd)/example:/app/code local-dcycle-sass-lint-image --help
docker run -v $(pwd)/example:/app/code local-dcycle-sass-lint-image -v -q -c /sass-lint-rules.yml /app/code/some-sass-file.scss
