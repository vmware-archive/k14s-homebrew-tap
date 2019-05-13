class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.6.0"
  url "https://github.com/k14s/kbld/releases/download/v0.6.0/kbld-darwin-amd64"
  sha256 "4d3df3e83a86be73413f8dc788778ce6e603aa0efa1ccb35c6e0cc1efb725ced"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
