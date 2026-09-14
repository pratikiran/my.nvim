# 🚀 My Portable Neovim Configuration

A clean, high-performance IDE environment built with **Neovim v0.11+** and **Lazy.nvim**. Styled to perfectly match the VS Code Dark Modern theme and optimized for **Go** and **JavaScript/TypeScript** development.


## 📋 System Prerequisites

Before cloning this configuration onto a new machine, ensure the following core tools are installed on your host system:

### 1. Core Package Managers & Editors
* **Neovim (v0.11+):** The modern development branch of the editor.
* **Homebrew (macOS/Linux):** Used to install system tools easily.
* **Node.js & npm:** Required for JavaScript/TypeScript language engines.

```bash
# Install Neovim via Homebrew (Mac)
brew install neovim --HEAD

# Install Node.js (if not already installed)
brew install node
```

### 2. Search & File Parsing Utilities
These tools power the ultra-fast search parsing inside Telescope and structural syntax loading:
* **Ripgrep (`rg`):** Blazing fast text searching engine.
* **Tree-sitter CLI:** Compiles language parsing blue-prints.

```bash
brew install ripgrep tree-sitter
```

### 3. Clipboard Sharing Utilities
Allows seamless copy/pasting (`y` and `p`) between Neovim and external web browsers or IDEs:
* **macOS:** Works out of the box (`pbcopy`/`pbpaste`).
* **Linux (X11):** Requires `xclip` or `xsel`.
* **Linux (Wayland):** Requires `wl-clipboard`.

```bash
# If installing on a Linux machine:
sudo apt install xclip wl-clipboard  # Ubuntu/Debian
sudo dnf install xclip wl-clipboard  # Fedora
```

---

## ⚙️ Installation & First-Time Setup

Once the prerequisites are present on the machine, deploy the workspace with these three commands:

```bash
# 1. Clear out any default Neovim cache folders
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim

# 2. Clone your private repository directly into the configuration path
git clone git@github.com:YOUR_USERNAME/nvim-config.git ~/.config/nvim

# 3. Launch Neovim
nvim
```

*Note: On the first launch, `lazy.nvim` will automatically open its dashboard graphic and start pulling your VS Code theme, Telescope finder, Mason configuration, and structural parsers completely from scratch. Restart the editor once the downloads wrap up.*

---

## ⌨️ Essential Project Keymaps

* **`<leader>pv`**: Open Netrw core project layout file viewer.
* **`<leader>ff`**: Search file names globally across the active workspace workspace.
* **`<leader>fg`**: Live Grep (Search for text matches inside project scripts).
* **`<leader>fb`**: Switch between active opened file buffer screens.

### Telescope Result Navigation
* **`Shift + j`** (in Normal mode): Move selection down.
* **`Shift + k`** (in Normal mode): Move selection up.
* **`Enter`**: Open the targeted file target.


