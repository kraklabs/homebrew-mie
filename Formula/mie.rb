# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.3/mie_v0.1.3_darwin_arm64.tar.gz"
      sha256 "144b52f8d99e92a0810e7e3a1b506b31ee49fee4b48fbe7d18bfca22a9696b93"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.3/mie_v0.1.3_darwin_amd64.tar.gz"
      sha256 "30c0984f564be33371238f9a6fcf94896d76f90ba374ad934c87144a1d1472c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.3/mie_v0.1.3_linux_arm64.tar.gz"
      sha256 "43b51872fea5fad77c8581aa60136fc2c8eadcb54b4745ea7628e18c17f3df13"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.3/mie_v0.1.3_linux_amd64.tar.gz"
      sha256 "22e9bb4343306defbdd4679f3094765ca770f23a267412b999999cf11bc40e12"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
