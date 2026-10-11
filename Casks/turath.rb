cask "turath" do
  version "9.0.84"
  sha256 "ac6b8e3b910daffb06749d19aa855cb57963f5f1835283ae511119c14fafde47"

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
