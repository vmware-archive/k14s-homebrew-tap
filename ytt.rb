class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.10.0"
  url "https://github.com/k14s/ytt/releases/download/v0.10.0/ytt-darwin-amd64"
  sha256 "2850480a1836b969978cfa32ca2080508bd93c7705f8f267d6aeb01c6bbca114"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
