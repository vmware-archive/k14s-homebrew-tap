class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.19.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.19.0/kapp-darwin-amd64"
    sha256 "8817b3afea01173d53d1a76c266cb1897eb94c5d3d2df496cfa54c464c064ee7"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.19.0/kapp-linux-amd64"
    sha256 "99a2597d29ab9cf75d636a8220cb7e5ee315ac85b7adeb48b6c1ccb56a5cf477"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
