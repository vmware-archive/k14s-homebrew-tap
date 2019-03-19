class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"
  version "v0.2.0"
  url "https://github.com/k14s/kapp/releases/download/v0.2.0/kapp-darwin-amd64"
  sha256 "fed3b2bfafe7fce282e72220b8ef9cf6a26a8a321747a43d5360a3478cc59f1a"

  depends_on :arch => :x86_64

  def install
    bin.install "kapp-darwin-amd64" => "kapp"
  end

  test do
    system "#{bin}/kapp", "version"
  end
end
