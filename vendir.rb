class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.11.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.11.0/vendir-darwin-amd64"
    sha256 "41d0164e71678d737a37da44a522a1e138907a3cfda4816614892aecfe47d961"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.11.0/vendir-linux-amd64"
    sha256 "ce9134276a369babee97cab6f087d316d4a32214f58815842e594bc1c79ac6d1"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
