# Written by the release workflow in jakejarvis/Clicker; edit it there.
cask "clicker" do
  version "0.3.2"
  sha256 "0945720a3752212006353372217c89a3b73eb4f086f5e19805990c34959469a2"

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
