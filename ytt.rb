class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.15.0"
  url "https://github.com/k14s/ytt/releases/download/v0.15.0/ytt-darwin-amd64"
  sha256 "6dbed6e99643b28dcb9a19612a56d2d052a2ba2eace392b95892fef394103ecf"

  depends_on :arch => :x86_64

  def install
    bin.install "ytt-darwin-amd64" => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
