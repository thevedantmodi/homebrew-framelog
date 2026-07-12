cask "framelog" do
  version "0.12.1"
  sha256 "ba2de9c0e1162ed362cb8ba07a66f9c8ff2e8508295357e2264778ff9116b3b9"

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
