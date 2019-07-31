class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.10.0"
  url "https://github.com/k14s/kbld/releases/download/v0.10.0/kbld-darwin-amd64"
  sha256 "a712ce9e5782f64e3b0e972651405d9ea22589ca8aac3be544337b04727ca2cc"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
