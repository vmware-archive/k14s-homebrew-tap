class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.30.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.30.0/kapp-darwin-amd64"
    sha256 "39efaf9be55571852db01ab59f436a28b1e2e74052be61a98e8205e0b85791ac"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.30.0/kapp-linux-amd64"
    sha256 "031020e3cd83883900695959f067d8afc64369c09d127a0ed34eeee3e264e422"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
