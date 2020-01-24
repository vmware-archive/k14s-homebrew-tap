class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.18.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.18.0/kapp-darwin-amd64"
    sha256 "e46aa8b334832275ddf9b982c0b88633bc891a8ffff1e0204ee36cf2fb2f20fb"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.18.0/kapp-linux-amd64"
    sha256 "4f08b5e3639c2d126903efa81cbc1af2ff342464cc24815442c190e4b220d52f"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
