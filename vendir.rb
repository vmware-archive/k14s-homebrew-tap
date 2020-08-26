class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.10.0"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.10.0/vendir-darwin-amd64"
    sha256 "de6da267406b90ac29ea87c831d18811681cc339115bc7b0e5f155227914f024"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.10.0/vendir-linux-amd64"
    sha256 "85bce9171f2f18da51695db185b33df2d4d555495cc45429e4838edf73b89d77"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
