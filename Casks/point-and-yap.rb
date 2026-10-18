cask "point-and-yap" do
  version "0.1.1"
  sha256 "82057291f03170a38e82cc09ef71e8f033cb0edbad173625222d8bc0792e3323"

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
