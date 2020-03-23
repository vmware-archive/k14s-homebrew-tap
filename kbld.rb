class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.17.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.17.0/kbld-darwin-amd64"
    sha256 "09b348bfb92c25bb47444fe6ace9659b1bf062334a31d8092de98014c431378b"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.17.0/kbld-linux-amd64"
    sha256 "ed16c560011eda40f07bad032859879904c3a264c478986151cae10815ced884"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
