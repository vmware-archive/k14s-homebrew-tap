###
# This branch is deprecated, use 'develop' branch instead.
###

class Ytt < Formula
  desc "YAML Templating Tool"
  homepage "https://get-ytt.io"

  ohai "Branch rename"

  opoo "We have renamed 'master' branch to 'develop'."
  opoo ""

  odie """To upgrade, retap it with:
    brew untap k14s/tap
    brew tap k14s/tap
    brew upgrade ytt"""
end
