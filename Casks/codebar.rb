cask "codebar" do
  version "1.1.0"
  sha256 "040e2322959a13592a6ba260a29be884b97b94bd6ac097b630f0953101a2f528"

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
