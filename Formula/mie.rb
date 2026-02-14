# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "1.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_darwin_arm64.tar.gz"
      sha256 "0dd23b227d625a2effcca6ba0274e49e8cc72bb82e8993895bb395acb2c22586"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_darwin_amd64.tar.gz"
      sha256 "abbc414e3615d5e1f53212405b42b01e3f354483d8cd006adf9810bb497afc12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_linux_arm64.tar.gz"
      sha256 "fc44dd771c8dc81cae7a067b0a5db20fca163d1b7be7f50587fda83135d45132"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v1.3.0/mie_v1.3.0_linux_amd64.tar.gz"
      sha256 "7777e1dd5a36754998094d3de338db0b8c85a4e6ce57cf81f7ddd087dd62cfa7"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
