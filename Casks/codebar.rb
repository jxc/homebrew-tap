cask "codebar" do
  version "1.2.0"
  sha256 "2b134da04a7d4d359f0e6faf2dbd1607cb4b6ebb99265015d8c7bd92f9c9820a"

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
