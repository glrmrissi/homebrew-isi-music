class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "1.4.1"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v1.4.1/isi-music-linux-arm64.tar.gz"
      sha256 "bce739837c86bb73f45a0acf4957457276c28ab490981e9725f1ea236f06aac5"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v1.4.1/isi-music-linux-x86_64.tar.gz"
      sha256 "a29e4c384dbf24aa89e9c75a8ecbe9dd6a72eddd06a58d50a017aba30aaa4a84"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
