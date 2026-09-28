# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28886"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28886/reactor-cli_v1.20260928.28886_darwin-arm64.tar.gz"
      sha256 "bb5f90a38ae72a149bfa102dc9cc82d480c1ab98c06ab7dd3153afa8286be356"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28886/reactor-cli_v1.20260928.28886_darwin-amd64.tar.gz"
      sha256 "5f878881e0b09efbff638bc7c95e618bbe8dee17eb23e09ef0d3a14f966ba564"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28886/reactor-cli_v1.20260928.28886_linux-arm64.tar.gz"
      sha256 "a414ca85c0483408af34d9f3c34f28f3569dfc2475797071637411d51224ad2a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28886/reactor-cli_v1.20260928.28886_linux-amd64.tar.gz"
      sha256 "1c27c6ef9b641bba966f2c8e55336d80d62dd87c64c220506f3e0595de972284"
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
