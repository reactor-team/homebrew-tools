# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.24887"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24887/reactor-cli_v1.20260904.24887_darwin-arm64.tar.gz"
      sha256 "2837b0a8b99ab439ea0e6080b14adcae5c7883d687ac7f02ace8c18393bb5e00"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24887/reactor-cli_v1.20260904.24887_darwin-amd64.tar.gz"
      sha256 "504cb9c7c354b935a576530d2a646a477596466b024fa055f7c097b68fa895c8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24887/reactor-cli_v1.20260904.24887_linux-arm64.tar.gz"
      sha256 "b1fa1421b27536188f606e0925d62476b66fad4ba38fc6ca6b660491d73bb766"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24887/reactor-cli_v1.20260904.24887_linux-amd64.tar.gz"
      sha256 "826c68ebd6520064b86c3c0043058deca9475a0f039aee19172d3c1000b364ba"
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
