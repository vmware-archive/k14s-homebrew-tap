class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"
  version "v0.27.2"

  if OS.mac?
    url "https://github.com/k14s/ytt/releases/download/v0.27.2/ytt-darwin-amd64"
    sha256 "0e1ee9487e09ce2f2e18be6637f69e41af2158ff3cb53737d5607b55f0326659"
  elsif OS.linux?
    url "https://github.com/k14s/ytt/releases/download/v0.27.2/ytt-linux-amd64"
    sha256 "64bcc36df4270e3413fd26b68683a353089c3b15c411904307e93c12f80556ab"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "ytt"
  end

  test do
    system "#{bin}/ytt", "version"
  end
end
