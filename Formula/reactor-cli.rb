# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.532"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.532/reactor-cli_v1.20261106.532_darwin-arm64.tar.gz"
      sha256 "c50b5a04b5f7c98bbd9af59b4e2dad46cc82e8c973d1b6dc58fa71ffc279df26"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.532/reactor-cli_v1.20261106.532_darwin-amd64.tar.gz"
      sha256 "2e4a376712de0a5404c8cc666ecc9467a67ffd3b1f18b8e1e5a1e76478efbb25"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.532/reactor-cli_v1.20261106.532_linux-arm64.tar.gz"
      sha256 "3c33935b305770fb0d5f68d53a44bc9f341b0a70fe3fc3a27e0007feb133b049"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.532/reactor-cli_v1.20261106.532_linux-amd64.tar.gz"
      sha256 "fab0b955643739ee9fc6c12d63de2a8a6b94000e4bba121495fbfc56523c7912"
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
