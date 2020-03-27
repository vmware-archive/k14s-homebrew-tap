class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.19.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.19.0/kbld-darwin-amd64"
    sha256 "f4462851c406699fe6189e39c30889dddf79275a9aeab4a4eef767c98374771b"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.19.0/kbld-linux-amd64"
    sha256 "cc08b09fda46c7b0e23b1cfa9f7275c1a942347bdeb846626123b385cb22b79e"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
