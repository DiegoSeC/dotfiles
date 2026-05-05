## 1. Fix syntax errors

- [x] 1.1 Remove spaces after commas in style strings on lines 57 and 59 (` none]` → `none]`)

## 2. Reorder plugin declarations

- [x] 2.1 Move `set -g @plugin 'tmux-plugins/tpm'` to be the first plugin entry (line 17)

## 3. Fix catppuccin load order

- [x] 3.1 Move `run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux` (line 36) to after the TPM bootstrap block (after line 65)
- [x] 3.2 Move all status bar configuration that uses `@thm_*` variables to after the catppuccin `run` command

## 4. Modernize terminal configuration

- [x] 4.1 Replace `set-option -g terminal-overrides ',xterm-256color:RGB'` with `set-option -ga terminal-features ",xterm-256color:RGB"`

## 5. Remove redundant and dead code

- [x] 5.1 Remove `setw -g pane-active-border-style` and `setw -g pane-border-style` (lines 78-79) since pane borders are disabled
- [x] 5.2 Remove commented prefix key bindings (lines 12-14)

## 6. Verify configuration

- [x] 6.1 Run `tmux source-file ~/.tmux.conf` and confirm no errors or warnings
- [x] 6.2 Verify status bar renders correctly with catppuccin frappe theme
- [x] 6.3 Verify all plugins load correctly via TPM
