cask "framelog" do
  version "0.1.3"
  sha256 "d898fdf355f0587a8b2b5db628239bf6d9548bc0eb858ac4e98031a8b152eb91"

  url "https://github.com/thevedantmodi/framelog/releases/download/v#{version}/Framelog-#{version}.dmg"
  name "Framelog"
  desc "Automated photo pipeline with SD card import, Lightroom XMP versioning, and git backup"
  homepage "https://github.com/thevedantmodi/framelog"

  app "Framelog.app"

  postflight do
    # Prompt the user to click Install Core in the menu bar after dragging to /Applications.
    puts "Framelog installed. Open the app and click 'Install Core…' to set up the background daemon."
  end

  zap trash: [
    "~/Library/Application Support/Framelog",
    "~/Library/Logs/Framelog",
    "~/Library/LaunchAgents/com.framelog.core.plist",
  ]
end
