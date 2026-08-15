cask "clap" do
  version "0.0.1"
  sha256 :no_check

  url "https://github.com/spongycode/clap/releases/download/v#{version}/clap-v#{version}.zip"
  name "clap"
  desc "Local-first macOS clipboard & shell history manager"
  homepage "https://github.com/spongycode/clap"

  depends_on macos: ">= :sonoma"

  app "clap.app"
  binary "#{appdir}/clap.app/Contents/MacOS/clap"

  zap trash: [
    "~/Library/Application Support/clap",
    "~/Library/Preferences/com.spongycode.clap.plist",
    "~/Library/Caches/com.spongycode.clap",
  ]
end
