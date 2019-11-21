class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.15.0"
  url "https://github.com/k14s/kapp/releases/download/v0.15.0/kapp-darwin-amd64"
  sha256 "8d3744e9b01c0c2ec4526f5c86ed838854b56806c656b83fc0eff78229ac68f2"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
