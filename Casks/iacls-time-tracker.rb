cask "iacls-time-tracker" do
  version "1.2.0"
  sha256 "b23bc182b0fba4b97c6e171f67e89232141c19452165dac58f55c6a32fe7ebbc"

  url "https://github.com/markwbennett/TimeTrackButton/raw/main/TimeTracker_CPP_v1.2.0.app.tar.gz"
  name "IACLS Time Tracker"
  desc "Time tracking application for legal and professional work"
  homepage "https://github.com/markwbennett/TimeTrackButton"

  depends_on arch: :arm64

  app "IACLS Time Tracker.app"

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