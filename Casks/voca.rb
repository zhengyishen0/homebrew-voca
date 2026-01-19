cask "voca" do
  version "1.0.20"
  sha256 "1f312f47818ad75180be90bcb240e3fd6d776fdb9d1ec1b4bf2511c51bd2d205"

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
