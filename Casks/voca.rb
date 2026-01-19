cask "voca" do
  version "1.0.21"
  sha256 "03537b110d4905e2675ceea3f05beb2e54173d60de68034cf84195be1a3222c1"

  url "https://github.com/zhengyishen0/voca-app/releases/download/v#{version}/Voca.dmg"
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
