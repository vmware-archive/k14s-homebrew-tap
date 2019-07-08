class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.8.0"
  url "https://github.com/k14s/kbld/releases/download/v0.8.0/kbld-darwin-amd64"
  sha256 "83ea3564f5d880ca5bf61d4ae9e1c5d7f7b0300a2986723e98572036a8218eac"

  depends_on :arch => :x86_64

  def install
    bin.install "kbld-darwin-amd64" => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
