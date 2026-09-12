class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.0.4"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.4/isi-music-linux-arm64.tar.gz"
      sha256 "5dbf6dbb3fd6fb3c65c8e489fb670faf6c179f9ee2b41d33a1c61402c489ab07"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.4/isi-music-linux-x86_64.tar.gz"
      sha256 "a65f413a9368113029d219fc78fb389e9b7d00139f4006609a305c5cdfcbb696"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
