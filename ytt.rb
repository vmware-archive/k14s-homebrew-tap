class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.22.0"
  url "https://github.com/k14s/ytt/releases/download/v0.22.0/ytt-darwin-amd64"
  sha256 "b9e1f2fcfc760fbb35967cafa82078bdf331c04a7b0dcb550cdbc2d8250e6308"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
