cask "point-and-yap" do
  version "0.1.4"
  sha256 "4cc455ee118a6c0d7332bd17bf201c864ab570895ade1701dbf5e877cb77e0cc"

  url "https://github.com/mfmaur/pointandyap/releases/download/v#{version}/PointAndYap.dmg"
  name "Point and Yap"
  desc "Talk and point at your screen; your coding agent gets the to-do list"
  homepage "https://pointandyap.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Point and Yap.app"

  zap trash: [
    "~/Library/Application Support/PointAndYap",
    "~/Library/Preferences/com.marcmaurer.pointandyap.plist",
  ]
end
