class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.23.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.23.0/kapp-darwin-amd64"
    sha256 "1736e0a2cf8f25e2a26de344f8ea7c36e8d0215b2112b830923b5fb0b8c5d498"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.23.0/kapp-linux-amd64"
    sha256 "8e163878cf985c93df3fff594d63a6b1104e66a02d35745f4217efc05eacdad1"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
