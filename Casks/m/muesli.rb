cask "muesli" do
  version "0.7.0"
  sha256 "008bfb27e75c285cfed4b9408685d7066d2db4d4701128eb47edb0d5d10d3b9c"

  url "https://github.com/Muesli-HQ/muesli/releases/download/v#{version}/Muesli-#{version}.dmg",
      verified: "github.com/Muesli-HQ/muesli/"
  name "Muesli"
  desc "Local-first dictation and meeting transcription"
  homepage "https://muesli.works/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Muesli.app"

  zap trash: [
    "~/.cache/muesli",
    "~/Library/Application Support/Muesli",
  ]
end
