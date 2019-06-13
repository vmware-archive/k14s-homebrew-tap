class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.12.0"
  url "https://github.com/k14s/ytt/releases/download/v0.12.0/ytt-darwin-amd64"
  sha256 "7693a957124f73c610f48f39151a5fdacc2246f90be9309e9c67c5405cf9c8cc"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
