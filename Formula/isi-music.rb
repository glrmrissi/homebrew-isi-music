class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.2.0"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.2.0/isi-music-linux-arm64.tar.gz"
      sha256 "977ced5b545860a7d7689c62185b6210e3095f7222bd766a1673557c7a7e1c03"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.2.0/isi-music-linux-x86_64.tar.gz"
      sha256 "c70c3780ea46ba8a0eef92a35fd0747a6d0a5d73ecbdd3883adbdf2c20593471"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
