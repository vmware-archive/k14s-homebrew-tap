###
# This branch is deprecated, use 'develop' branch instead.
###

class Vendir < Formula
  desc "Declaratively state what should be in a directory"
  homepage "https://github.com/k14s/vendir"

  ohai "Branch rename"

  opoo "We have renamed 'master' branch to 'develop'."
  opoo ""

  odie """To upgrade, retap it with:
    brew untap k14s/tap
    brew tap k14s/tap
    brew upgrade vendir"""
end
