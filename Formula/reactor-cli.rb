# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.298"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.298/reactor-cli_v1.20261005.298_darwin-arm64.tar.gz"
      sha256 "3ada28503ce05a0c1cc53240b11c94c5637362019f7be4544c0ea2c67f5edb69"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.298/reactor-cli_v1.20261005.298_darwin-amd64.tar.gz"
      sha256 "1eaf44827c52b77671a1c54b99cb6026fd27d629e7fccdf32fa7e181a101d94f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.298/reactor-cli_v1.20261005.298_linux-arm64.tar.gz"
      sha256 "5f920735bc2da39fdebacd18af8a0b4dfb5bda0fda3bdf03e8b54a5728507ae6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.298/reactor-cli_v1.20261005.298_linux-amd64.tar.gz"
      sha256 "b7213caf71dae552cd21721454f5f1296928b160e44dc3b2da032273c385d2d4"
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
