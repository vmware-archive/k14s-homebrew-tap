class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.11.0"
  url "https://github.com/k14s/kapp/releases/download/v0.11.0/kapp-darwin-amd64"
  sha256 "b333e3c1ef879dba47fee3b81469546da8d4e7fd594f8c065f1ef9930a5a4096"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
