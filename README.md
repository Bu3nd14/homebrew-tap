# SidecarSwitch Homebrew tap

Install and update [SidecarSwitch](https://github.com/Bu3nd14/SidecarLauncher) via Homebrew.

```bash
brew tap Bu3nd14/tap
brew trust --cask bu3nd14/tap/sidecar-switch
brew install --cask --appdir="$HOME/Applications" bu3nd14/tap/sidecar-switch
```

Upgrade:

```bash
brew update
brew upgrade --cask --appdir="$HOME/Applications" sidecar-switch
```

The app is not notarized. If Gatekeeper blocks it, use “Open Anyway” or:

```bash
xattr -dr com.apple.quarantine "$HOME/Applications/SidecarSwitch.app"
```

Configuration lives in `~/Library/Application Support/SidecarSwitch/config.json`.

Requirements: macOS 14.2+, Apple Silicon, Remote Login and the repo tools on the personal Mac.
