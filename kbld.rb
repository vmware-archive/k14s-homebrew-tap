class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.16.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.16.0/kbld-darwin-amd64"
    sha256 "9616c60eb18c3f9e79f02c7e3a6aa9b8c48c1f73922ce993a09895fd67fd51e1"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.16.0/kbld-linux-amd64"
    sha256 "964d5542b811abbc430aa54d4bc805e2d8ce5a9dbf5cadc01c4b107a50c1424e"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
