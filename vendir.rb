class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.3.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.3.0/vendir-darwin-amd64"
    sha256 "ae2c70a41f723f583be2542b604937bdbb3ef7610806c016358570e9bfe275b0"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.3.0/vendir-linux-amd64"
    sha256 "c8826b72c8321fb402f37a9b17ea9bd0cbdd6cd0ec2e5de7c91640c44fcee143"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
