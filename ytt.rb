class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.21.0"
  url "https://github.com/k14s/ytt/releases/download/v0.21.0/ytt-darwin-amd64"
  sha256 "05bc4510c3212d3926bf431456fdbeedf635158d4e0e225ec028dce71ff638d7"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
