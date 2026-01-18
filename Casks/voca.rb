cask "voca" do
  version "1.0.17"
  sha256 "122aa73056b14f5b50171e91f0cb6c6ffa3a29b96b62e45d8cc54321504bc3f6"

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
