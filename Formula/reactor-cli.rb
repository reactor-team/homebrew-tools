# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260713.18256"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18256/reactor-cli_v1.20260713.18256_darwin-arm64.tar.gz"
      sha256 "a05ae99c9d689c955545a46090c4527ab8430bbcabc9a55648cb3a0d3a2797b0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18256/reactor-cli_v1.20260713.18256_darwin-amd64.tar.gz"
      sha256 "5a4ad370111145560b70b8ee53c01ac464e05dd9e129171eec70d825e5986c81"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18256/reactor-cli_v1.20260713.18256_linux-arm64.tar.gz"
      sha256 "79359190b699b33d6cebbf429965b4cfeb7be0b42f30da1e7bab2ba06b0a6ae5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260713.18256/reactor-cli_v1.20260713.18256_linux-amd64.tar.gz"
      sha256 "488c4f2b634c056c79a711d92714cddd588cdf8e4f846da66d8435418cf2a4c9"
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
