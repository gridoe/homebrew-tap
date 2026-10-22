# Homebrew tap for Refryt

[Refryt](https://github.com/gridoe/refryt) is a lightweight YouTube Music client. This tap
installs its macOS build (Apple Silicon) with [Homebrew](https://brew.sh):

```sh
brew install --cask gridoe/tap/refryt
```

The app is not notarised yet, so macOS refuses the first launch: allow it once in System
Settings > Privacy & Security, or run `xattr -cr /Applications/Refryt.app`.
`brew upgrade --cask refryt` moves to a new release. The cask follows the project's GitHub releases.
