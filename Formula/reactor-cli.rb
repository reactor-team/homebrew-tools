# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27813"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27813/reactor-cli_v1.20260919.27813_darwin-arm64.tar.gz"
      sha256 "5c8025f7fc1577eee9edc806f1a2185694141b17c533d7fc149413970d13515b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27813/reactor-cli_v1.20260919.27813_darwin-amd64.tar.gz"
      sha256 "a1696ac3f528aed0b5f2ed91f1477fbff6631608d6f7a6606b2b2f66ebf690dd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27813/reactor-cli_v1.20260919.27813_linux-arm64.tar.gz"
      sha256 "20b338ddfab7247b31de6b4a66871335c3fee58fb96fa8f54a603d0eeb1e1bab"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27813/reactor-cli_v1.20260919.27813_linux-amd64.tar.gz"
      sha256 "6715fee23761c38f6a507829aa7f8b1602f628ca37669c2e9c16ee7c0b974cbc"
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
