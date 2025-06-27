cask "iacls-time-tracker" do
  version "1.1.3"
  sha256 "bb9bd0988c071082fb02b9f3295b3eddc09868e1262ff58ba10d87cc5b7d9f91"

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
