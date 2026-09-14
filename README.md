# 🚀 My Portable Neovim Configuration

A clean, high-performance IDE environment built with **Neovim v0.11+** and **Lazy.nvim**, styled to match the VS Code Dark Modern theme and optimized for **Go** and **JavaScript/TypeScript** development.

---

## 📋 System Prerequisites

Ensure you have installed:
* **Neovim (v0.11+)**
* **Homebrew, Node.js, & npm**
* **Ripgrep (`rg`) & Tree-sitter CLI**
* **Clipboard utilities** (`xclip` or `wl-clipboard` for Linux)

---

## ⚙️ Installation & First-Time Setup

Deploy the workspace with these commands:

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim
git clone git@github.com:pratikiran/my.nvim.git ~/.config/nvim
nvim
```

---

## ⌨️ Keymaps & Code Intelligence

* **`<leader>pv`**: Open Netrw
* **`<leader>ff`**: Search file names globally
* **`<leader>fg`**: Live Grep
* **`<leader>fb`**: Switch active file buffers
* **`gd`**: Go to Definition
* **`K`**: Hover Documentation
* **`<leader>rn`**: Rename Symbol
* **`<leader>ca`**: Code Actions

