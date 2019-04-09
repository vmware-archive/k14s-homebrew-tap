class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.5.0"
  url "https://github.com/k14s/ytt/releases/download/v0.5.0/ytt-darwin-amd64"
  sha256 "043b98b2425496ebf88f9c2d0ad4c3fdba12fb4037e99fa8a44499100ad0e486"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
