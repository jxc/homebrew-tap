cask "codebar" do
  version "1.0.0"
  sha256 "007a8b8189d164ceb11462eb7863999ca2f7149a12c59ce409157718591367cb"

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
