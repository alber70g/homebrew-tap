cask "spacesbar" do
  version "0.1.2"
  sha256 "bca491d4ae61a7bc2d3e96d11e1b2526d94ff79d57490aeb78ee1ccbb82351db"

  url "https://github.com/alber70g/SpacesBar/releases/download/v#{version}/SpacesBar-#{version}-arm64.zip"
  name "SpacesBar"
  desc "Menu bar app showing apps per space"
  homepage "https://github.com/alber70g/SpacesBar"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "SpacesBar.app"

  caveats <<~CAVEATS
    SpacesBar is unsigned, so macOS Gatekeeper will block it on first launch.

    Remove the quarantine attribute manually before first launch:

      xattr -dr com.apple.quarantine /Applications/SpacesBar.app
  CAVEATS

  zap trash: [
    "~/.config/spacesbar.json",
    "~/Library/Application Support/SpacesBar",
    "~/Library/Logs/SpacesBar",
    "~/Library/Preferences/nl.upgraide.SpacesBar.plist",
  ]
end
