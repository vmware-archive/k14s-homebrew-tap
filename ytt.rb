class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.24.0"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.24.0/ytt-darwin-amd64"
    sha256 "dad9e162745fe2e394b3b8c798182357e5cb4caedba57d2ce0aafda6c6520418"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.24.0/ytt-linux-amd64"
    sha256 "c3f1d4f04108ac1626c9b9036c7d4e407d4ff09f2577953ad72b6dc7adadbd39"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
