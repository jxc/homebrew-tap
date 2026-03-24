cask "codebar" do
  version "1.3.0"
  sha256 "8f5f0be8a73031e9672518bb7709ceb13b7429884d9dbed50f1ed2a493493b36"

  url "https://github.com/jxc/codebar/releases/download/v#{version}/CodeBar-v#{version}.dmg"
  name "CodeBar"
  desc "macOS menu bar app that monitors active Claude Code sessions"
  homepage "https://github.com/jxc/codebar"

  depends_on macos: ">= :ventura"

  app "CodeBar.app"

  zap trash: [
    "~/Library/Preferences/com.jxc.CodeBar.plist",
  ]
end
