class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.17.0"
  url "https://github.com/k14s/ytt/releases/download/v0.17.0/ytt-darwin-amd64"
  sha256 "91a9dd9de10773b9f938e7b4e4f8169176caaff199d73cede67a07c96d4badd7"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
