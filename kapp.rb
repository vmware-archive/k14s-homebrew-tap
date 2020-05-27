class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.28.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.28.0/kapp-darwin-amd64"
    sha256 "b345f30d349682694c51b86a4cd14e37deabcd7b2f008132865a32d667fa55e6"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.28.0/kapp-linux-amd64"
    sha256 "68af97af76fd3dfb94ec8c2e98e00b8fec3d8d2dc17487601ab00692a358a479"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
