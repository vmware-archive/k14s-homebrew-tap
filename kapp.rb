class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.21.0"

  if OS.mac?
    url "https://github.com/k14s/kapp/releases/download/v0.21.0/kapp-darwin-amd64"
    sha256 "09c49473b7fa31633203867f253c10d0bbd543cda5bc640ff2ebc91aec9be130"
  elsif OS.linux?
    url "https://github.com/k14s/kapp/releases/download/v0.21.0/kapp-linux-amd64"
    sha256 "9dfeb831f8caf5515dff968f040f06cb9cb8942dec7df3626a44eee1e63cf460"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
