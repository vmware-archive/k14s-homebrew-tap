class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.11.0"
  url "https://github.com/k14s/ytt/releases/download/v0.11.0/ytt-darwin-amd64"
  sha256 "4966b6b3ffc7691a06fd7e183a623a2dc77cd8f7725ce7a843a8829500587c5b"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
