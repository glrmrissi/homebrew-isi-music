class IsiMusic < Formula
  desc "Terminal music player for Spotify streaming and local file playback"
  homepage "https://github.com/glrmrissi/isi_music"
  version "2.0.5"

  on_linux do
    on_arm do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.5/isi-music-linux-arm64.tar.gz"
      sha256 "611d0d5922aef17f2ff3cdc5235c334aca9424a36fa2528ff0fc1143b1f8b8c1"
    end
    on_intel do
      url "https://github.com/glrmrissi/isi_music/releases/download/v2.0.5/isi-music-linux-x86_64.tar.gz"
      sha256 "29a411448234bf588cfc4ccbc2312c9548d57dd465e2abaf7e524aeabd3d1ec2"
    end
  end

  def install
    bin.install "isi-music"
  end

  test do
    assert_match "isi-music v", shell_output("#{bin}/isi-music --version")
  end
end
