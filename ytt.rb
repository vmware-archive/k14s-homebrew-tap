class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.4.0"
  url "https://github.com/k14s/ytt/releases/download/v0.4.0/ytt-darwin-amd64"
  sha256 "1fb2cc9ccb516bba9fb3e042849d2fbb68b73768dcfbe718cdc385618602fe59"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
