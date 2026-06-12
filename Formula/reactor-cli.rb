# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260612.15928"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15928/reactor-cli_v1.20260612.15928_darwin-arm64.tar.gz"
      sha256 "a9dc5efdbcc8f41a6257e951ccf12b888842f162873db6b3af2d0d60afa801ef"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15928/reactor-cli_v1.20260612.15928_darwin-amd64.tar.gz"
      sha256 "34f6220ed87a75c058707bf253a2777272977ffab92753b5b7fb7afefbb0b1e6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15928/reactor-cli_v1.20260612.15928_linux-arm64.tar.gz"
      sha256 "ebb65874b6c4bc5144fa6dbf89cc37c74aa68d1d69595de72dc5ecbf1b9307c4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15928/reactor-cli_v1.20260612.15928_linux-amd64.tar.gz"
      sha256 "745e4e89d596fb971a49a9b55ca68df67f28ca789db8811c0597c0dd44a77df2"
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
