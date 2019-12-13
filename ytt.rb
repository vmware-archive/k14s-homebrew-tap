class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.23.0"
  url "https://github.com/k14s/ytt/releases/download/v0.23.0/ytt-darwin-amd64"
  sha256 "f246ad0d41aff28fd2be1d2b95f2e974d6221bde869c9f430021a4f882822ee9"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
