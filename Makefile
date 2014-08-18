publish:
  @make tag && npm publish

tag:
	@git tag "$(ENV)-v$(shell node -e "var config = require('./package.json'); console.log(config.version);")"
	@git push --tags
