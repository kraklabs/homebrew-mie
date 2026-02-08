# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.4/mie_v0.1.4_darwin_arm64.tar.gz"
      sha256 "8a14a4b1f85aaf0afa5e081de6ef818aac5444fb41309783ea57b9444adac276"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.4/mie_v0.1.4_darwin_amd64.tar.gz"
      sha256 "0b1766c59feb7035aaad1ec3f7862c4cc063769fc94ffeddfd6dd219be93c8c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.4/mie_v0.1.4_linux_arm64.tar.gz"
      sha256 "cc8ba46023111358551c9330edd1359a561454680d3921c8a59ddbddc6b779cd"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.4/mie_v0.1.4_linux_amd64.tar.gz"
      sha256 "eb60ef2599ceb391ea820542d8656cb8dfc262d6cf64e53279c3658fa70ceec9"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
