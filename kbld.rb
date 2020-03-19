class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.15.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.15.0/kbld-darwin-amd64"
    sha256 "e9442199a127877681bf70200d69d0e2d15cf061801e5b9998473ee5c144a712"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.15.0/kbld-linux-amd64"
    sha256 "396f02f1d9f320cf5089c19aa9c5d014949cfba8d6029a562fe73212bc483db4"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
