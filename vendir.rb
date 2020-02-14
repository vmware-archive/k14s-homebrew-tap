class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.6.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.6.0/vendir-darwin-amd64"
    sha256 "75ebece3fe3b45051ade3045b6e35d351709b42c32ebd4e05c4ea49f11594115"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.6.0/vendir-linux-amd64"
    sha256 "c746c2f5a119816970fa5fe22ecffd89cf30a0a2cad68e1882f7fe4700923e71"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
