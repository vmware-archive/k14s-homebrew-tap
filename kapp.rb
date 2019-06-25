class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.8.0"
  url "https://github.com/k14s/kapp/releases/download/v0.8.0/kapp-darwin-amd64"
  sha256 "bbba2e1a29d9f229db9cdfc86e4cac329767e7e25581ecc3e09b16fd62746009"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
