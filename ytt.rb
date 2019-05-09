class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.9.0"
  url "https://github.com/k14s/ytt/releases/download/v0.9.0/ytt-darwin-amd64"
  sha256 "183f8e2ac58c7ddc69804d775dc6ada08e4d9e57fb4aa9006dc53f015a6cd842"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
