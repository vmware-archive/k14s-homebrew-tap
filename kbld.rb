class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.12.0"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.12.0/kbld-darwin-amd64"
    sha256 "2ca30f9e60c8fdcbec109fb73e61568e806c4c6620d9fd1ec0d0dd9b654aec50"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.12.0/kbld-linux-amd64"
    sha256 "f2f8b1882f51a6d3434d59b9622eb651487a06e8bcbac14401914e7e2a726ba3"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
