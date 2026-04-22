# Alber70g Tap

## Casks

### [spacesbar](https://github.com/alber70g/SpacesBar)

Lightweight macOS menu bar app that shows which apps are active on which macOS space. Backed by [yabai](https://github.com/koekeishiya/yabai).

```sh
brew tap alber70g/tap
brew install --cask spacesbar
```

Requires macOS 26 (Tahoe) and Apple Silicon. The build is unsigned — if Gatekeeper blocks it, right-click the app and choose **Open**, or run:

```sh
xattr -dr com.apple.quarantine /Applications/SpacesBar.app
```

## How do I install these formulae?

`brew install alber70g/tap/<formula>`

Or `brew tap alber70g/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "alber70g/tap"
cask "spacesbar"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
