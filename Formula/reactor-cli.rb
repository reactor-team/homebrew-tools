# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.279"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.279/reactor-cli_v1.20261104.279_darwin-arm64.tar.gz"
      sha256 "da49dff10f2b1e60e94a35adb1750649d7867fbe1b0389450cb9c571786f20e3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.279/reactor-cli_v1.20261104.279_darwin-amd64.tar.gz"
      sha256 "73da5a8d22e2ce2a183407e8bc65003c735c536bce32f056531f1b4200a108af"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.279/reactor-cli_v1.20261104.279_linux-arm64.tar.gz"
      sha256 "581052aceb88b120037f56b239bf78b0cf8d8f98edfea93e91ff6d07871bb2d8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.279/reactor-cli_v1.20261104.279_linux-amd64.tar.gz"
      sha256 "7d15952a0f055ef866fd2c43851db1d6e1e3d6c0a2e359ed454c572f004a8c99"
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
