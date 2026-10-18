cask "point-and-yap" do
  version "0.1.2"
  sha256 "7c6196f7ad1982a0b73ebe19489912902626fd5c109e1fc56957c3c07e2d1194"

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
