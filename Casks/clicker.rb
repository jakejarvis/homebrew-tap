cask "clicker" do
  version "0.2.11"
  sha256 "4b01b326cf9183bab06e4867854520f86e07e5f69642514142cd5afa364de1aa"

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
    "~/Library/Application Support/Clicker",
    "~/Library/Caches/com.jakejarvis.Clicker",
    "~/Library/HTTPStorages/com.jakejarvis.Clicker",
    "~/Library/Preferences/com.jakejarvis.Clicker.plist",
  ]
end
