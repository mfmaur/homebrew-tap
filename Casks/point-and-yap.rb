cask "point-and-yap" do
  version "0.1.0"
  sha256 "06bb3a83f82063855ee6ee99740fb8ea77f1f905dcbf5a8b9037e66fad5079a2"

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

  app "Point.app"

  zap trash: [
    "~/Library/Application Support/Point",
    "~/Library/Preferences/com.marcmaurer.point.plist",
  ]
end
