cask "voca" do
  version "1.2.5"
  sha256 "8adf7bb042c6fca276e127cf3e06e53e430b38332fe451942ba6d4a8435c15a4"

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
