cask "framelog" do
  version "0.15.0"
  sha256 "78de0e358487c229365d4441f471acfb1c4f4248c721b204f92f7f9c0786fb7b"

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
