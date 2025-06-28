cask "iacls-time-tracker" do
  version "1.1.5"
  sha256 "188574901452d92fc4709fca2923c6bc060381775489970f9a62c5b3bf7ede6e"

  url "https://github.com/markwbennett/TimeTrackButton/raw/6a04e1a/TimeTracker_CPP_Optimized.app.tar.gz"
  name "IACLS Time Tracker"
  desc "Simple time tracking application with floating button interface"
  homepage "https://github.com/markwbennett/TimeTrackButton"

  app "TimeTracker_CPP.app", target: "IACLS Time Tracker.app"

  zap trash: [
    "~/Documents/TimeTracker",
    "~/Library/Preferences/org.iacls.timetracker.plist",
  ]
end
