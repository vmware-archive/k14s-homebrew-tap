class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.9.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.9.0/vendir-darwin-amd64"
    sha256 "d5216373ea0f319402f516483c2d86fa4cb42fd1abd3bea08fed21773e98f5f2"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.9.0/vendir-linux-amd64"
    sha256 "5d45cac346fad415150b82c3bf60110525a907d8545ac4c1d972d4f85985b16e"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
