class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.26.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.26.0/kbld-darwin-amd64"
    sha256 "65ac1a4b108c1478bf53883bfec492577d80cf950f90a6e9331b202dbff4bad5"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.26.0/kbld-linux-amd64"
    sha256 "63d35026696ffa23ea4dbf52d47cda02e1844a538fead30bf2ea78ea92410c21"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
