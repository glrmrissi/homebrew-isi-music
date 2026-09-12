class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.0.3"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.3/isi-music-linux-arm64.tar.gz"
      sha256 "6dbb6e000088f6df653979d6277e287a6611d0547eecfe83eb03ee5a4f058906"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.3/isi-music-linux-x86_64.tar.gz"
      sha256 "37fb2622f41711b2cecf4c9340e4324987e84748ce4b226863401dea6a141209"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
