# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28879"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28879/reactor-cli_v1.20260928.28879_darwin-arm64.tar.gz"
      sha256 "5292954c43219c6230a7608a29abb4f2799371fb5dac793455e67818444d2c43"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28879/reactor-cli_v1.20260928.28879_darwin-amd64.tar.gz"
      sha256 "79951b9c9e48249bd7d8805906694edf60817a4f18d5b7e2cc5df1b9838a9b69"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28879/reactor-cli_v1.20260928.28879_linux-arm64.tar.gz"
      sha256 "2372df1751f3125e17e2efc358e46acdb828d4cfc5d6cab19e1be23f58bdc55c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28879/reactor-cli_v1.20260928.28879_linux-amd64.tar.gz"
      sha256 "74abb9bddb2a5446903bbcb787e2dd6fa64cbb9d1cc5dccaee40a02b933e6490"
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
