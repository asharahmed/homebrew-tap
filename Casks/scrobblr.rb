cask "scrobblr" do
  version "0.1.16"
  sha256 "07b0a52b0c9964a06462e82c4d0c1e4d9b799501182d5cb6adf8598cdf4fdab7"

  url "https://github.com/asharahmed/scrobblr/releases/download/v#{version}/Scrobblr.dmg"
  name "Scrobblr"
  desc "Last.fm scrobbler for Apple Music"
  homepage "https://github.com/asharahmed/scrobblr"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates the app itself, so Homebrew leaves upgrades to it.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Scrobblr.app"

  uninstall quit: "app.scrobblr.Scrobblr"

  zap trash: [
    "~/Library/Application Support/Scrobblr",
    "~/Library/Caches/app.scrobblr.Scrobblr",
    "~/Library/HTTPStorages/app.scrobblr.Scrobblr",
    "~/Library/Preferences/app.scrobblr.Scrobblr.plist",
    "~/Library/WebKit/app.scrobblr.Scrobblr",
  ]
end
