class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.12.0"
  url "https://github.com/k14s/kbld/releases/download/v0.12.0/kbld-darwin-amd64"
  sha256 "2ca30f9e60c8fdcbec109fb73e61568e806c4c6620d9fd1ec0d0dd9b654aec50"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
