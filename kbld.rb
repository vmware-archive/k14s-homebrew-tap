class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.13.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.13.0/kbld-darwin-amd64"
    sha256 "62d3201b31e7f78ae3d6c1d0621aeb21a59be94bd990811e8af28b61f9ec86c1"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.13.0/kbld-linux-amd64"
    sha256 "c5dc9a5e2fc1795f64f674cbc528a28c269432ce9485ee4dc74d8d18890dd4be"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
