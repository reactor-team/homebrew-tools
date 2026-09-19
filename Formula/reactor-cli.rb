# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27849"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27849/reactor-cli_v1.20260919.27849_darwin-arm64.tar.gz"
      sha256 "977c130a0fa13c1b6329fcfd09c785dd0cf511346a8f71406353a4e6809f9b1d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27849/reactor-cli_v1.20260919.27849_darwin-amd64.tar.gz"
      sha256 "55737c6835b24b6261b2298f94251f3a94aeddb286193f1a7b8f45ea1f431c4d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27849/reactor-cli_v1.20260919.27849_linux-arm64.tar.gz"
      sha256 "085818bbc0fc72e8cf1311225064dbcf71f9dd48fd60eee1371f3046d2ab42bf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27849/reactor-cli_v1.20260919.27849_linux-amd64.tar.gz"
      sha256 "0abcaf26598786ae5f06ba5a257e72e51b705d004e72713b5c2f734dc97535b5"
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
