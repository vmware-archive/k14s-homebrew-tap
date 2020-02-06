class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.4.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.4.0/vendir-darwin-amd64"
    sha256 "3888fbfaa634dc85d60b70d1d0e0a75c78236d8cce97884052d858748544dc1e"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.4.0/vendir-linux-amd64"
    sha256 "91f435084fc615d2cab0fc546997472a1669997129cd5605c67fa9d575ad916b"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
