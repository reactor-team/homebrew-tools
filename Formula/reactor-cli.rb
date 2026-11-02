# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.254"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.254/reactor-cli_v1.20261102.254_darwin-arm64.tar.gz"
      sha256 "9fc17cbc5a8ee6ee99f55675bbe1c118ac2fb42bf4a4362cf6d905aeef93071b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.254/reactor-cli_v1.20261102.254_darwin-amd64.tar.gz"
      sha256 "4a781c33608e30b1d60dba287ed76ec9e61f8f25cbddee1e4929be1fd1712417"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.254/reactor-cli_v1.20261102.254_linux-arm64.tar.gz"
      sha256 "e18e967588f96628053745d10efefc12da41220dbd203f38ec5e7893d0ecd887"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.254/reactor-cli_v1.20261102.254_linux-amd64.tar.gz"
      sha256 "be33be60bd6f68f8deca702197b6a887e9839a7df9d413f84d9ba0718aef0181"
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
