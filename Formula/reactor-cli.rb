# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260910.25706"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25706/reactor-cli_v1.20260910.25706_darwin-arm64.tar.gz"
      sha256 "6fd9e661305d1d4e68d04df09330fec1780953bbd9997a71c766e3430c6c1b62"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25706/reactor-cli_v1.20260910.25706_darwin-amd64.tar.gz"
      sha256 "3ee66de265a9b4e5331eb854ab5e881f4de62fcd9e6e5afe7ee1bcc3646f86e2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25706/reactor-cli_v1.20260910.25706_linux-arm64.tar.gz"
      sha256 "884da19cc51d2532b56e049ebace667aac0ee41ec447af49a88d53978c489de3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25706/reactor-cli_v1.20260910.25706_linux-amd64.tar.gz"
      sha256 "b7da12e8c84c242599c4df6317f8bcd9c8cd4192e0bb4856aabc8f322fcf5342"
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
