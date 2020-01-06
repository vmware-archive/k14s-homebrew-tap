class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.23.0"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.23.0/ytt-darwin-amd64"
    sha256 "f246ad0d41aff28fd2be1d2b95f2e974d6221bde869c9f430021a4f882822ee9"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.23.0/ytt-linux-amd64"
    sha256 "a6ef8df88c3b18044842c984f05d2e4472b3f354d42a63d3497757123e1fe108"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
