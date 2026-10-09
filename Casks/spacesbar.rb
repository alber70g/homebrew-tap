cask "spacesbar" do
  version "0.2.0"
  sha256 "a930e53c6c96b111b165495dac1999d5b391d47b320eca81bed1cc242041459b"

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
