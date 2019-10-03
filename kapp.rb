class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.14.0"
  url "https://github.com/k14s/kapp/releases/download/v0.14.0/kapp-darwin-amd64"
  sha256 "7d41af44fc3290c8b783b75672d2dc55dfab751252db0717a26fceb2585daa2d"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
