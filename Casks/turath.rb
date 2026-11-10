cask "turath" do
  version "9.0.91"
  sha256 "6ed7d182460501f1a4a4ed5eceff4ce8ed686c77794936f340e5b86e98f31859"

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

  zap :not_required
end
