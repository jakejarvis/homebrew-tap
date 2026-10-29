# Written by the release workflow in jakejarvis/Clicker; edit it there.
cask "clicker" do
  version "0.3.11"
  sha256 "e220216a25514a8400d19802069225d24486c46a0e1bb301de801693234e3f68"

  url "https://github.com/jakejarvis/Clicker/releases/download/v#{version}/Clicker-#{version}.dmg"
  name "Clicker"
  desc "Menu bar remote for Apple TV"
  homepage "https://clicker.jarv.is/"

  livecheck do
    url "https://clicker.jarv.is/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Clicker.app"

  uninstall quit: "com.jakejarvis.Clicker"

  zap trash: [
    "~/Library/Application Scripts/com.jakejarvis.Clicker",
    "~/Library/Containers/com.jakejarvis.Clicker",
  ]
end
