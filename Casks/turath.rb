cask "turath" do
  version "9.0.94"
  sha256 "f9c1297af1125dcb2f6eb5364c238d72be76a477f484fd5cfceea04e4acd5636"

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
