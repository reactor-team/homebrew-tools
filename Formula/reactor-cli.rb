# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260820.22576"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22576/reactor-cli_v1.20260820.22576_darwin-arm64.tar.gz"
      sha256 "bf47bb74096a1fcc8db75cf3e571dda81d1cf07eb987d207cbe934aa2bfbe4f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22576/reactor-cli_v1.20260820.22576_darwin-amd64.tar.gz"
      sha256 "ad54e63272b04ec91d442b6f13e092a524b499ec9c9de87935faece4bd0a7f8d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22576/reactor-cli_v1.20260820.22576_linux-arm64.tar.gz"
      sha256 "6c2a7890fe6e7f6383942f09ca30414f06e49604306e65ebf61e8ccb4fcb19d4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260820.22576/reactor-cli_v1.20260820.22576_linux-amd64.tar.gz"
      sha256 "64514f69d4ec21fa94d315129dee806951e36b529851dc179b8d34fa61df0845"
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
