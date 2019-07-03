class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.14.0"
  url "https://github.com/k14s/ytt/releases/download/v0.14.0/ytt-darwin-amd64"
  sha256 "5783352d5a4818549e48e4b1d9e18a5db55455b1597bc58c143992c596dfd1f4"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
