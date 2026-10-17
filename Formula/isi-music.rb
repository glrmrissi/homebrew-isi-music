class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.1.0"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.1.0/isi-music-linux-arm64.tar.gz"
      sha256 "a06a7108caf781639177b2dcd575118fc9a426666ee6b3570381bbb725a30ff1"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.1.0/isi-music-linux-x86_64.tar.gz"
      sha256 "e3815e8dbb068c69ea278ea5b01a17a9096dce6c3a8637bcef3e7877ae6f3498"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
