## 1. Create .zshenv with environment exports

- [x] 1.1 Create `.zshenv` with XDG base directory exports (`XDG_CONFIG_HOME`, `XDG_CACHE_HOME`, `XDG_DATA_HOME`)
- [x] 1.2 Move Ruby `GEM_HOME` and PATH export to `.zshenv`
- [x] 1.3 Move `MANPAGER` export to `.zshenv`
- [x] 1.4 Move `.env` file loading to `.zshenv`

## 2. Clean up .zshrc

- [x] 2.1 Remove XDG default fallbacks, use `$XDG_CACHE_HOME` and `$XDG_DATA_HOME` directly
- [x] 2.2 Remove Ruby `GEM_HOME` and PATH export from `.zshrc`
- [x] 2.3 Remove `MANPAGER` export from `.zshrc`
- [x] 2.4 Remove `.env` file loading from `.zshrc`
