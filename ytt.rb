class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.2.0"
  url "https://github.com/k14s/ytt/releases/download/v0.2.0/ytt-darwin-amd64"
  sha256 "2e49c7ef41a655b35ac192f40b9fd4c62cd05c177d6d24faecbdf054677d2c95"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
