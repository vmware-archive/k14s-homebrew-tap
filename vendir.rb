class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.5.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.5.0/vendir-darwin-amd64"
    sha256 "57be681d154607b21b1789bf0999e0b9ab6870673180d25e19a5b29c7520c68e"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.5.0/vendir-linux-amd64"
    sha256 "bdd1490c879cb07f7cfe8d45051c9f185b493347637370a37de9ddaf84890b03"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
