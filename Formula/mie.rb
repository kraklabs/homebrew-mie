# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.3/mie_v1.3.3_darwin_arm64.tar.gz"
      sha256 "d8f1aa1f3d9a410e282a50e6d8791bc8f965bdfa81c7379352faa0085405b42f"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.3/mie_v1.3.3_darwin_amd64.tar.gz"
      sha256 "fcac2729b4be8b283961b97649c948db5bbfdba980fcd532a8a009de45fa8209"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.3/mie_v1.3.3_linux_arm64.tar.gz"
      sha256 "0cf18ee3ddae0f96f144c12c351e747f3b0bbe2750ecbc1f9369b11f832a3152"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.3/mie_v1.3.3_linux_amd64.tar.gz"
      sha256 "a40da9f10fa12d572b4e094ddaf01c60ecb92b29981957c3e374054fa2167f3d"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
