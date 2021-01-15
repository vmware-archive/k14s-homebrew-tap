class Kbld < Formula
  desc "kbld helps working with container images used in Kubernetes configuration files"
  homepage "https://github.com/k14s/kbld"
  version "v0.27.0"
  deprecate! date: "2021-01-01", because: "Migrating tap to vmware-tanzu/carvel"

  if OS.mac?
    url "https://github.com/k14s/kbld/releases/download/v0.27.0/kbld-darwin-amd64"
    sha256 "17e1336b714f9b6e9a99f86c6a8952be56b018d7aacab712f70e59430edfbdab"
  elsif OS.linux?
    url "https://github.com/k14s/kbld/releases/download/v0.27.0/kbld-linux-amd64"
    sha256 "9c2c38ce2f884523a6888c3ba5c28bb9a7ab5d3f9879ab8492db1372e206e83b"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "kbld"
  end

  test do
    system "#{bin}/kbld", "version"
  end
end
