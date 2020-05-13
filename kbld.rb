class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.22.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.22.0/kbld-darwin-amd64"
    sha256 "ee5f7271883fe8dc10128c31bacecbce29a23a492ee7d06393d11690c3b4da4b"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.22.0/kbld-linux-amd64"
    sha256 "eb888079b26330e71b855c3f37c8b81fe55125b9a6e26a43e9eeabfd016051d6"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
