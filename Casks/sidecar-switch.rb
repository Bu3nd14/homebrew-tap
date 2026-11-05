cask "sidecar-switch" do
  version "0.4.3"
  sha256 "b5cebdb4f22fc0b29437a18690df7e33ccbd9148ec180a39f2d98b9f7cf8ad1e"

  url "https://github.com/Bu3nd14/SidecarLauncher/releases/download/sidecar-switch-v#{version}/SidecarSwitch-#{version}.zip"
  name "SidecarSwitch"
  desc "Switch the iPad Sidecar session between two Macs"
  homepage "https://github.com/Bu3nd14/SidecarLauncher"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SidecarSwitch.app"

  caveats <<~EOS
    SidecarSwitch non è notarizzata. Se macOS la blocca:
      sudo xattr -dr com.apple.quarantine "/Applications/SidecarSwitch.app"

    Se l'hai installata con --appdir, usa invece:
      xattr -dr com.apple.quarantine "$HOME/Applications/SidecarSwitch.app"

    Configurazione:
      ~/Library/Application Support/SidecarSwitch/config.json

    Aggiornamento:
      brew upgrade --cask sidecar-switch

    Con installazione in ~/Applications:
      brew upgrade --cask --appdir="$HOME/Applications" sidecar-switch
  EOS

  zap trash: [
    "~/Library/Application Support/SidecarSwitch",
    "~/Library/Logs/SidecarSwitch",
    "~/.sidecar-switch",
  ]
end
