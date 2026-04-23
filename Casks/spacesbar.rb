cask "spacesbar" do
  version "0.1.3"
  sha256 "7e27b10e5271c67a3a24f63447622916b61bb8f3d945eb1a77cd99beb2a5a4a0"

  url "https://github.com/alber70g/SpacesBar/releases/download/v#{version}/SpacesBar-#{version}-arm64.zip"
  name "SpacesBar"
  desc "Menu bar app showing apps per space"
  homepage "https://github.com/alber70g/SpacesBar"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "SpacesBar.app"

  zap trash: [
    "~/.config/spacesbar.json",
    "~/Library/Application Support/SpacesBar",
    "~/Library/Logs/SpacesBar",
    "~/Library/Preferences/nl.upgraide.SpacesBar.plist",
  ]

  caveats <<~CAVEATS
    SpacesBar is unsigned, so macOS Gatekeeper will block it on first launch.

    Remove the quarantine attribute manually before first launch:

      xattr -dr com.apple.quarantine /Applications/SpacesBar.app
  CAVEATS
end
