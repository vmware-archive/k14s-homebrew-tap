class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.18.0"
  url "https://github.com/k14s/ytt/releases/download/v0.18.0/ytt-darwin-amd64"
  sha256 "812b19e007ff1e5a54a8923cd311b73a580ca823f60be53338addd2657d32212"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
