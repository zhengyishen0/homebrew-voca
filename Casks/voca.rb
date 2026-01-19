cask "voca" do
  version "1.2.4"
  sha256 "bd857ad9a18a7014ce4ed9e015adec2d1c5fff17fab705eabcb07ec09407c241"

  url "https://github.com/zhengyishen0/voca-app/releases/download/v#{version}/Voca-#{version}.dmg"
  name "Voca"
  desc "Voice-to-text transcription for macOS menu bar"
  homepage "https://github.com/zhengyishen0/voca-app"

  depends_on macos: ">= :ventura"

  app "Voca.app"

  zap trash: [
    "~/Library/Preferences/com.zhengyishen.voca.plist",
    "~/Library/Application Support/Voca",
  ]
end
