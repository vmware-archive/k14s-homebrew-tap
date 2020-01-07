class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.2.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.2.0/vendir-darwin-amd64"
    sha256 "d0fe4954e2508758f9b52f17fb62dc4e80fd7ce4aeb920849ebb18d594f87ea7"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.2.0/vendir-linux-amd64"
    sha256 "d8f7d62ba204b49016d6b36651114e6499f3711c9b670be99292835981e68694"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
