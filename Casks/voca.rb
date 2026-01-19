cask "voca" do
  version "1.2.3"
  sha256 "39e64ecd765f35066a1ebcaf92b726c2f47266385eacb054554ea5f29ded83a0"

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
