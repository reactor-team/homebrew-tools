# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261027.414"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.414/reactor-cli_v1.20261027.414_darwin-arm64.tar.gz"
      sha256 "2e62c3d4c119d3b58be2d247c1322d442ee3bffcf78a8214e6eeb211d086a3a2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.414/reactor-cli_v1.20261027.414_darwin-amd64.tar.gz"
      sha256 "f3afec21e0c677a26ce998837236ef2cc03755fec6ca9d3a605fd674f9bd5513"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.414/reactor-cli_v1.20261027.414_linux-arm64.tar.gz"
      sha256 "a6580c70e26e30d4bb78fe179600a7d64ec8d015019a1298007cb121594e8f09"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.414/reactor-cli_v1.20261027.414_linux-amd64.tar.gz"
      sha256 "94b37123cf046048e0eb2d842cb17af9fe0559c3ad93bb8ae1ee70ca3e1961e4"
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
