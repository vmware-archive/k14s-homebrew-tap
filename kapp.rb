class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.7.0"
  url "https://github.com/k14s/kapp/releases/download/v0.7.0/kapp-darwin-amd64"
  sha256 "97d3d167185a999a07babb9a689d8a0eec98b5a077cb3a4085e2916e95fbb822"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
