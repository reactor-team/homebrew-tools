# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261011.27"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261011.27/reactor-cli_v1.20261011.27_darwin-arm64.tar.gz"
      sha256 "5bab5da603ae30b0963f5ad9ed250a59e42787697299d1f69cf228093ed0a052"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261011.27/reactor-cli_v1.20261011.27_darwin-amd64.tar.gz"
      sha256 "4b72a57ba2394779f86825ae670a499c286d7cf0ef37fa7bc215c333250b8f26"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261011.27/reactor-cli_v1.20261011.27_linux-arm64.tar.gz"
      sha256 "7f94729625ca53fd932c00bd6d329c12c617a978a93d258dac9875bd9a43a838"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261011.27/reactor-cli_v1.20261011.27_linux-amd64.tar.gz"
      sha256 "7f69cd7c55b7e0b637bcd9b442d269496e2d909a91b50daf611b75e80bacc471"
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
