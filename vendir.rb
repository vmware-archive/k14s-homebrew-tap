class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.2.0"
  url "https://github.com/k14s/vendir/releases/download/v0.2.0/vendir-darwin-amd64"
  sha256 "d0fe4954e2508758f9b52f17fb62dc4e80fd7ce4aeb920849ebb18d594f87ea7"

  depends_on :arch => :x86_64

  def install
    bin.install "vendir-darwin-amd64" => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
