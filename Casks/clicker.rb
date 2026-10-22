# Written by the release workflow in jakejarvis/Clicker; edit it there.
cask "clicker" do
  version "0.3.7"
  sha256 "09126b7cde7a946c2ee01b59b2037f9cd16d5c66b766aaa40f5d46570ff10801"

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
