class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.5.0"
  url "https://github.com/k14s/kbld/releases/download/v0.5.0/kbld-darwin-amd64"
  sha256 "ac243ec6149c9df7843c978eb530e05b00ebeafd905799e33abf630adf2923eb"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
