class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"
  version "v0.13.0"
  deprecate! date: "2021-01-01", because: "Migrating tap to vmware-tanzu/carvel"

  if OS.mac?
    url "https://github.com/k14s/vendir/releases/download/v0.13.0/vendir-darwin-amd64"
    sha256 "5901dba6c3b73ec16f64cd13ffb731df0f8f6ff05369d184187a60aa3f76c662"
  elsif OS.linux?
    url "https://github.com/k14s/vendir/releases/download/v0.13.0/vendir-linux-amd64"
    sha256 "d779c002059f7dccc8d3d83c4e703b6fd6eb7748acb26da7e0210261e61ae727"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "vendir"
  end

  test do
    system "#{bin}/vendir", "version"
  end
end
