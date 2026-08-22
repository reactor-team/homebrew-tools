# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260822.22757"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22757/reactor-cli_v1.20260822.22757_darwin-arm64.tar.gz"
      sha256 "b90a31da906d18187d94f0731965e2d48aaa3c49f51a9c4be8b52f1dc7811cbd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22757/reactor-cli_v1.20260822.22757_darwin-amd64.tar.gz"
      sha256 "5e66d971d87175cd818efa0637a372e886dd870d3882356073e013154283c2c4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22757/reactor-cli_v1.20260822.22757_linux-arm64.tar.gz"
      sha256 "a493e3ec40a7b2acd59623db9de284d6c362a3ef6be59da64ae093e30337a2e3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260822.22757/reactor-cli_v1.20260822.22757_linux-amd64.tar.gz"
      sha256 "e339e863ddc7d9a5e498be34526936d439f7d254e51a8720fd56de875f2009e0"
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
