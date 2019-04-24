class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.2.0"
  url "https://github.com/k14s/kwt/releases/download/v0.2.0/kwt-darwin-amd64"
  sha256 "c8c5a06c63d06bdfb6dbca42d8c5dd2b1d5095b64e634a4de58229330a6d2cdc"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
