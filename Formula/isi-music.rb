class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.0.1"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.1/isi-music-linux-arm64.tar.gz"
      sha256 "7843cb8476347b7151e82b50fc276df0830f9ea5df4bc405fb2d398b61e525c3"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.1/isi-music-linux-x86_64.tar.gz"
      sha256 "71895593632971cf3c2d8b362fe2231139088050cf6b9c1669cf66404651582c"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
