.PHONY: macos
macos: link macos_init homebrew

.PHONY: macos_biz
macos_biz: macos brew_bundle_biz font

.PHONY: macos_hobby
macos_hobby: macos brew_bundle_hobby font

.PHONY: linux
linux: link homebrew brew_bundle_dev docker

.PHONY: linux_desktop
linux_desktop: linux font

.PHONY: macos_init
macos_init:
	bin/macos_init.sh

.PHONY: homebrew
homebrew:
	bin/homebrew.sh

.PHONY: brew_bundle_biz
brew_bundle_biz:
	brew bundle --file Brewfile.biz

.PHONY: brew_bundle_dev
brew_bundle_dev:
	brew bundle --file Brewfile.dev

.PHONY: brew_bundle_hobby
brew_bundle_hobby:
	brew bundle --file Brewfile.hobby

.PHONY: docker
docker:
	bin/docker.sh

.PHONY: source
source:
	source ~/.zshenv

.PHONY: link
link:
	bin/link.sh

.PHONY: font
font:
	bin/font.sh

.PHONY: sdkman
sdkman:
	bin/sdkman.sh