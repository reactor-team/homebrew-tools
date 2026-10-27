# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261027.141"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.141/reactor-cli_v1.20261027.141_darwin-arm64.tar.gz"
      sha256 "d3601435d1a91f123e0148554788c95e030c9f8c24682e6cdc9396412230055e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.141/reactor-cli_v1.20261027.141_darwin-amd64.tar.gz"
      sha256 "a59b2d398f0cc7b1ae49c150b1ff16327bce3d362c10d509c7bda6da02b1954c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.141/reactor-cli_v1.20261027.141_linux-arm64.tar.gz"
      sha256 "8b6e4c30a7c5ef85c6ee52cd7d35ade0ea6561b1e03343c62ef347aff4710149"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261027.141/reactor-cli_v1.20261027.141_linux-amd64.tar.gz"
      sha256 "eb774dd82e72c76e702ffc54f339194a4f3f6df3feeea782881b46d5aae6460d"
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
