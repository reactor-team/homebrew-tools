# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.143"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.143/reactor-cli_v1.20261102.143_darwin-arm64.tar.gz"
      sha256 "587b9f61975b238e1aae1c255152a01aa44ecfdb6e68d132773393de2b0dd55c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.143/reactor-cli_v1.20261102.143_darwin-amd64.tar.gz"
      sha256 "09eb629add6389f141e56be8b32066d494e699c28de03325cc17b2def12a0596"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.143/reactor-cli_v1.20261102.143_linux-arm64.tar.gz"
      sha256 "6661a498c44baaec3b0559ce0eb7c625e5ad8bdb776a275da5ac4e99337afd68"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.143/reactor-cli_v1.20261102.143_linux-amd64.tar.gz"
      sha256 "4da06ce17cd89e3ee602347c62fff8a639397ef32fb0437a7747d20bc7153777"
    end
  end

  def install
    bin.install "reactor"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
  end
end
