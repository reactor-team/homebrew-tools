# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260611.15776"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15776/reactor-cli_v1.20260611.15776_darwin-arm64.tar.gz"
      sha256 "1e9b368a215744d322797a356e62f5f0400ebd7bc6cf19f5e503c27e76dc3b40"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15776/reactor-cli_v1.20260611.15776_darwin-amd64.tar.gz"
      sha256 "521e93184635647d8713f8fa5932d4a3acbf1d538e786715e80aa8e8a8371bf0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15776/reactor-cli_v1.20260611.15776_linux-arm64.tar.gz"
      sha256 "d2f24c7e16dbc3b5c225fcf2e8031ffd9aa7df63f0d7ec339917ed9023dd97e8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15776/reactor-cli_v1.20260611.15776_linux-amd64.tar.gz"
      sha256 "c7729962ba0d3a66b2701630ad3f7c81be9f6becea091fb66d4c31582e260a8c"
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
