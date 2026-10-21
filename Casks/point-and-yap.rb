cask "point-and-yap" do
  version "0.1.5"
  sha256 "df2fda90f62f11209667530989357ec1d484871bbf7217a91d80dedfa50f102f"

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
