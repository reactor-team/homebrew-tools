# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260724.19177"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19177/reactor-cli_v1.20260724.19177_darwin-arm64.tar.gz"
      sha256 "6b511e5566d4da82bf47b6ac883873d3c0812fe4702e619af7762c51b3881ee0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19177/reactor-cli_v1.20260724.19177_darwin-amd64.tar.gz"
      sha256 "850e6ff83a7af5264900cc491980535b5deb345a186e49958c52684b643fec05"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19177/reactor-cli_v1.20260724.19177_linux-arm64.tar.gz"
      sha256 "cd153152c2a3fa268892029e30560f468428474799ae0bd6b202be9fc4f517c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260724.19177/reactor-cli_v1.20260724.19177_linux-amd64.tar.gz"
      sha256 "997665617f5ca375160523cb77c2f6b0b59a66e8d422d27c45a7194aa045c0c7"
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
