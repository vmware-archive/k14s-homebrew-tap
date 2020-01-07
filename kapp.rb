class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.17.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.17.0/kapp-darwin-amd64"
    sha256 "49dbf96dbed4c72774e13dadd2211f77bbad91c2044fa0eae5401ccd0082887f"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.17.0/kapp-linux-amd64"
    sha256 "696abb7e53d047d9d606da8df5965141ab5ee1a97fc06ceeddcca9fc9531520a"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
