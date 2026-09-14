.PHONY: install clean sync help

help:
	@echo "🔧 Available Workspace Commands:"
	@echo "  make install  - Automatically downloads Mac system packages and dependencies"
	@echo "  make clean    - Wipes local Neovim caching layers and temporary storage"
	@echo "  make sync     - Quickly adds, commits, and pushes configuration updates to GitHub"

install:
	@echo "📦 Checking and fetching system packages..."
	@command -v brew >/dev/null 2>&1 || (/bin/bash -c "$$(curl -fsSL https://githubusercontent.com)")
	@brew install neovim ripgrep tree-sitter node go

clean:
	@echo "🧹 Flushing editor caching states..."
	rm -rf ~/.local/share/nvim ~/.cache/nvim ~/.local/state/nvim

sync:
	@echo "🚀 Syncing updates directly up to GitHub..."
	git add .
	git commit -m "chore: synchronize environment changes"
	git push origin main

