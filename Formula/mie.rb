# Copyright 2025-2026 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the MIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Mie < Formula
  desc "Memory Intelligence Engine - persistent memory layer for AI agents"
  homepage "https://github.com/kraklabs/mie"
  version "0.1.9"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.9/mie_v0.1.9_darwin_arm64.tar.gz"
      sha256 "a358ed16ce25b0674e28bb08c942b3d012e0db8c15acb0182a6c6c3eccc2e0d7"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.9/mie_v0.1.9_darwin_amd64.tar.gz"
      sha256 "d74fb4e584ad0372a61248e512e1d4d101817e7e0d7b1ae5c6011cc2897a729b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.9/mie_v0.1.9_linux_arm64.tar.gz"
      sha256 "b2fa6414d96e18eeb88de1f8b504f1016e61e97755ce9e56febd8485b7806605"
    end
    on_intel do
      url "https://github.com/kraklabs/mie/releases/download/v0.1.9/mie_v0.1.9_linux_amd64.tar.gz"
      sha256 "c52582f529d79b70f8d1df43474245be6aaf1ef686f05d13e5ee51c11020a96f"
    end
  end

  def install
    bin.install Dir["mie*"].first => "mie"
  end

  test do
    system "#{bin}/mie", "--version"
  end
end
