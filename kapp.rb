###
# This branch is deprecated, use 'develop' branch instead.
###

class Kapp < Formula
  desc "Kapp"
  homepage "https://get-kapp.io"

  ohai "Branch rename"

  opoo "We have renamed 'master' branch to 'develop'."
  opoo ""

  odie """To upgrade, retap it with:
    brew untap k14s/tap
    brew tap k14s/tap
    brew upgrade kapp"""
end
