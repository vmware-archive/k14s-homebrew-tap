class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.20.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.20.0/kapp-darwin-amd64"
    sha256 "f4f259d3b0a226f8ea7ccbf7347de3e40529d698fb0bc2ef1f0dcf7aea25c72a"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.20.0/kapp-linux-amd64"
    sha256 "3287514b8ca14fb0378af701fce94cec09e613bff473a2ee969335edf86da5b5"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
