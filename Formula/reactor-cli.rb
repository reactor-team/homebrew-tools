# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28149"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28149/reactor-cli_v1.20260922.28149_darwin-arm64.tar.gz"
      sha256 "6971cae8f24c1c7385c4d9a7b1dc7c2e5e7519f4282ac3e76e6be695f4d50e88"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28149/reactor-cli_v1.20260922.28149_darwin-amd64.tar.gz"
      sha256 "2924c8aa26446779759480e3428941b38c99115821ad983b7204f65f87076650"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28149/reactor-cli_v1.20260922.28149_linux-arm64.tar.gz"
      sha256 "02938b4df284e06b47d3d89156e7caf73372e4404a78fea2cdeb2d5735a989b2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28149/reactor-cli_v1.20260922.28149_linux-amd64.tar.gz"
      sha256 "8c66c460f5118605b3a987d2dfda4bd0e160e55f29503972c238f0184eab3a6a"
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
