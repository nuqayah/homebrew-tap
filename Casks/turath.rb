cask "turath" do
  version "9.0.80"
  sha256 "4e1213da0b67ccad67ad992fdf10e644f0c8120a934ab6efa42d121ac2926aaf"

  url "https://app.turath.io/desktop-updates/turath-#{version}-universal.dmg"
  name "Turath"
  name "تراث"
  desc "Arabic Islamic library for reading, searching, and annotating books"
  homepage "https://app.turath.io/"

  livecheck do
    url "https://app.turath.io/desktop-updates/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "تراث.app"

  uninstall quit: "com.nuqayah.turath.desktop"

  # No zap stanza required
end
