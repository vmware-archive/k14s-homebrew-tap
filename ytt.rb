class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.6.0"
  url "https://github.com/k14s/ytt/releases/download/v0.6.0/ytt-darwin-amd64"
  sha256 "5bb61ca3ffdaa37cb9aa3f655fe3ec7df5b5b64119d7cc9571a775852b78ba91"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
