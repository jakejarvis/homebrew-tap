# Written by the release workflow in jakejarvis/Clicker; edit it there.
cask "clicker" do
  version "0.3.10"
  sha256 "f4abb561a9519010933798eeefd1288f743dec8be2f5942b25de8697533a223c"

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
