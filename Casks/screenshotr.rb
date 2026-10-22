cask "screenshotr" do
  version "0.1.0"
  sha256 "511599a4b43c1f511e996785dd4f4881b6f28df58949c4c8e577c88acffb008f"

  url "https://github.com/asharahmed/screenshotr/releases/download/v#{version}/Screenshotr_#{version}_aarch64.dmg"
  name "Screenshotr"
  desc "Capture a screenshot or file and get a link from your own storage"
  homepage "https://github.com/asharahmed/screenshotr"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself, so Homebrew leaves upgrades to it.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Screenshotr.app"

  zap trash: [
    "~/Library/Application Support/ca.aahmed.screenshotr",
    "~/Library/Caches/ca.aahmed.screenshotr",
    "~/Library/LaunchAgents/ca.aahmed.screenshotr.plist",
    "~/Library/Preferences/ca.aahmed.screenshotr.plist",
    "~/Library/WebKit/ca.aahmed.screenshotr",
  ]
end
