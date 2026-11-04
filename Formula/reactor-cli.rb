# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.134"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.134/reactor-cli_v1.20261104.134_darwin-arm64.tar.gz"
      sha256 "edea64c811e06580be0e9bca74b34317488378e42c61c5c0b485265ff6589c36"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.134/reactor-cli_v1.20261104.134_darwin-amd64.tar.gz"
      sha256 "90da8b1402042143ba8e6fdca71125f717842213fe9ee93d2b359c4efdb67942"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.134/reactor-cli_v1.20261104.134_linux-arm64.tar.gz"
      sha256 "8a42bb135ce29521e48d3fde0bbf69382207e9fc47fc22d2c990234bbc6f47c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.134/reactor-cli_v1.20261104.134_linux-amd64.tar.gz"
      sha256 "ac885190d856c0ce2294c02326d81d82bee79c79b2491b070a9bcbdc5527fd6e"
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
