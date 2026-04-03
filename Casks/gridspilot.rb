cask "gridspilot" do
  version "0.3.0"
  sha256 "98ae4d701bf7f46164a388bc666455bc0fc92a8f441d41c9463e3834513a24f0"

  url "https://github.com/hu8627/GridsPilot/releases/download/v#{version}/GridsPilot_#{version}_aarch64.dmg"
  name "GridsPilot"
  desc "AI-Native Business OS with Human-in-the-Loop orchestration"
  homepage "https://github.com/hu8627/GridsPilot"

  depends_on arch: :arm64

  app "GridsPilot.app"

  zap trash: [
    "~/Library/Application Support/com.gridspilot.app",
    "~/Library/Caches/com.gridspilot.app",
    "~/Library/Preferences/com.gridspilot.app.plist",
    "~/Library/Saved Application State/com.gridspilot.app.savedState",
  ]
end
