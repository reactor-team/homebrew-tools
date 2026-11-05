# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.201"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.201/reactor-cli_v1.20261105.201_darwin-arm64.tar.gz"
      sha256 "6a1c69458fe936669c3b1ee94833fb4059b38b0caa1d581b60fe93ad7774ce05"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.201/reactor-cli_v1.20261105.201_darwin-amd64.tar.gz"
      sha256 "c8a27299df40caa3902ac1649f000ee3e3e4434e961457f031b882f13963f521"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.201/reactor-cli_v1.20261105.201_linux-arm64.tar.gz"
      sha256 "025b9b86fed085b26b60a18d374dbe641e622ab0681cea0e59d3daa7f712904c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.201/reactor-cli_v1.20261105.201_linux-amd64.tar.gz"
      sha256 "daa5e1bbee31dd8a9847fb77d1bfa0c41a2dbd172a17117c536834f4214d7604"
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
