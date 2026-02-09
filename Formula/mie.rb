# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.2.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.2.0/mie_v1.2.0_darwin_arm64.tar.gz"
      sha256 "29a47a0dfcb92e5b67b5f06d68788d613b065ee9c28d3e204d2b02a0b3fc344d"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.2.0/mie_v1.2.0_darwin_amd64.tar.gz"
      sha256 "1b67d5b291c064c6ec2380504c8e6d8afcf94515be46921454deafa65b5559f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.2.0/mie_v1.2.0_linux_arm64.tar.gz"
      sha256 "e1b99f97b3b8c2db297a27b64f51020deabd42f5b777166dd43ff6fb7734f0d7"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.2.0/mie_v1.2.0_linux_amd64.tar.gz"
      sha256 "a01d8af85696c6672587c663e894b34aaf831d78a16e30cf04e60f0fc64d3523"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
