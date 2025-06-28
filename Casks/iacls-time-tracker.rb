cask "iacls-time-tracker" do
  version "1.1.4"
  sha256 "6c6d0dd4bc78aad5e5431913f489822dc315b1c088989246959902d0db43534d"

  url "https://github.com/markwbennett/TimeTrackButton/raw/d1e5a99d89e8ffd6c576b47c6bf8aa2db4a08280/TimeTracker_CPP_SelfContained.app.tar.gz"
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
