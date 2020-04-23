class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.25.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.25.0/kapp-darwin-amd64"
    sha256 "de558603a95fdc42b73d337ecef0b6bf41c2c098dba9b71524feda734b857cf7"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.25.0/kapp-linux-amd64"
    sha256 "9b760e6dfb8e8ed4886141affb99d6b4ab7e80178f3991cbb68f44a5bc1353de"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
