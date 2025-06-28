cask "iacls-time-tracker" do
  version "1.1.7"
  sha256 "34d8721aec5a8691efd02db1eb70e96174e338feb72ec193344bcfae17f66d39"

  url "https://github.com/markwbennett/TimeTrackButton/raw/6da3cb3/TimeTracker_CPP_With_Plugins.app.tar.gz"
  name "IACLS Time Tracker"
  desc "Simple time tracking application with floating button interface"
  homepage "https://github.com/markwbennett/TimeTrackButton"

  app "TimeTracker_CPP.app", target: "IACLS Time Tracker.app"

  zap trash: [
    "~/Documents/TimeTracker",
    "~/Library/Preferences/org.iacls.timetracker.plist",
  ]
end
