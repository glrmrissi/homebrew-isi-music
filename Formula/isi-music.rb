class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.0.0"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.0/isi-music-linux-arm64.tar.gz"
      sha256 "5f6d6c866ccd839a0ef07cdd0e9dbb3569e4cbcd856cbbd61ef93b9af41363c1"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.0/isi-music-linux-x86_64.tar.gz"
      sha256 "942e3f3ad7ffe6618e7f4bc6d027fc0454937b24d77a02a98991016e492cb4dc"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
