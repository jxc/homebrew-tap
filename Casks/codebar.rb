cask "codebar" do
  version "1.2.1"
  sha256 "66e534712688dc33763bce7d6f32666ee1921d8a21ab0f9254a1db1dea7642fc"

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
