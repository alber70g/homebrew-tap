cask "spacesbar" do
  version "0.1.1"
  sha256 "d82d435671fb5865c30226a27c9256307cf44d04afe6a75373c59a053d08124a"

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

  caveats <<~EOS
    SpacesBar is unsigned, so macOS Gatekeeper will block it on first launch.

    Either right-click SpacesBar.app in /Applications and choose "Open",
    or remove the quarantine attribute manually:

      xattr -dr com.apple.quarantine /Applications/SpacesBar.app
  EOS
end
