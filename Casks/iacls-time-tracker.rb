cask "iacls-time-tracker" do
  version "1.1.3"
  sha256 "9949b6ead28982a09e4e0c77d5070a2e06b72f5a4f11e73d6633d4a4f12e39b3"

  url "https://github.com/markwbennett/TimeTrackButton/raw/9102b23fc264735da107ac5870f8f6eff7a8934e/TimeTracker_CPP.app.tar.gz"
  name "IACLS Time Tracker"
  desc "Time tracking application for legal and professional work"
  homepage "https://github.com/markwbennett/TimeTrackButton"

  app "TimeTracker_CPP.app", target: "IACLS Time Tracker.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/IACLS Time Tracker.app"],
                   sudo: false
  end

  zap trash: [
    "~/Documents/TimeTracker",
    "~/.config/timetracker",
  ]
end
