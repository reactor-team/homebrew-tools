# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260827.23448"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260827.23448/reactor-cli_v1.20260827.23448_darwin-arm64.tar.gz"
      sha256 "4b4231ca37daac5f97920526b3c57606911147c3464e878729dcf30b74275a2d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260827.23448/reactor-cli_v1.20260827.23448_darwin-amd64.tar.gz"
      sha256 "05dc9dd2f0b80e9095e42751f7d1be8cae3ecbece01df75eac7c6f120780ca89"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260827.23448/reactor-cli_v1.20260827.23448_linux-arm64.tar.gz"
      sha256 "373a6ee035da9938230405b2a959e3a1f6287237124fba084935cf2315bbeeb4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260827.23448/reactor-cli_v1.20260827.23448_linux-amd64.tar.gz"
      sha256 "96b81312607c05344b6708e2ce1d4b396eaba0c55a94e2deebab750c24be95a2"
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
