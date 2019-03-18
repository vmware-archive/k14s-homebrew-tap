class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.1.0"
  url "https://github.com/k14s/kapp/releases/download/v0.1.0/kapp-darwin-amd64"
  sha256 "519bf6e3240711705bd4dfa6fa50467edb34fcc18fae2ce32736e4c6caa3560f"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
