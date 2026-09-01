class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.0.2"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.2/isi-music-linux-arm64.tar.gz"
      sha256 "2f2f3d85c08d8016f56a416062449db756b4bc5b14bfbb81712737fa0344c0c5"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.2/isi-music-linux-x86_64.tar.gz"
      sha256 "216de07254f593e65298b3abda2954259b80d313026da458f8234cd5f1503813"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
