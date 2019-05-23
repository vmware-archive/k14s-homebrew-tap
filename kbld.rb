class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.7.0"
  url "https://github.com/k14s/kbld/releases/download/v0.7.0/kbld-darwin-amd64"
  sha256 "a8b449b74d797048798d484e2e4a7671f730e7c9702414f9f7e3cead837ab4db"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
