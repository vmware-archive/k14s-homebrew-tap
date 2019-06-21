class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.13.0"
  url "https://github.com/k14s/ytt/releases/download/v0.13.0/ytt-darwin-amd64"
  sha256 "c786ce096e1281c57c573f1bb4abc1082537e05a41e8918b07b4c38e84676793"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
