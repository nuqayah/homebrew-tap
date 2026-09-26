cask "turath" do
  version "9.0.79"
  sha256 "cc10511a81a53a1aabf53093057fae7990bd56e0a6e6cb31a4762b5b1dfff90f"

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
