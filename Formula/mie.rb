# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.7"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.7/mie_v0.1.7_darwin_arm64.tar.gz"
      sha256 "ecedd628a794822f20425733f10d879c498e820224cf1e67712ce73485b49664"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.7/mie_v0.1.7_darwin_amd64.tar.gz"
      sha256 "e720ebb4aa561140ef5798d8166056b0bb4bbdccbb1883b6776efac81a18a8d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.7/mie_v0.1.7_linux_arm64.tar.gz"
      sha256 "6b8313c2d1fe266ecd7784e213c7cc43c45f3d59ee12bdc362a98a95424091ac"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.7/mie_v0.1.7_linux_amd64.tar.gz"
      sha256 "63396bbd8c5300119b7a5fb341b6801aa0c9d6fa0e24b264f4d5e3d1c8004e69"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
