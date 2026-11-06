# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.519"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.519/reactor-cli_v1.20261106.519_darwin-arm64.tar.gz"
      sha256 "9c1cdc9cf3e25300b3883e6b2dc6a4061b45b8fbb259ed0f816bab2650688df1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.519/reactor-cli_v1.20261106.519_darwin-amd64.tar.gz"
      sha256 "1eb5a18af5c01fe2a95bc5f7dd0b4b0c36886a00a036d5203b26368deab502f9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.519/reactor-cli_v1.20261106.519_linux-arm64.tar.gz"
      sha256 "b56283e02d07e38c2a9aa0bfffa999243c0da9a6e27d5d13def0f6a50fa45654"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.519/reactor-cli_v1.20261106.519_linux-amd64.tar.gz"
      sha256 "ba0eb58d948f6f24198f143e489ce40de032994bb51be3123205d8d29aad1c77"
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
