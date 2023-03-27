.PHONY: macos
macos: macos homebrew brew_bandle link

.PHONE: homebrew
homebrew:
	.bin/homebrew.sh

.PHONY: brew_bandle
brew_bandle:
	brew install

.PHONY: link
link:
	.bin/link.sh