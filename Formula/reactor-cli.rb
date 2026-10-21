# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261021.56"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.56/reactor-cli_v1.20261021.56_darwin-arm64.tar.gz"
      sha256 "848afae63ff356c2a9499249ad854e7685dd385ae624ac2ac8e9b27dbc772670"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.56/reactor-cli_v1.20261021.56_darwin-amd64.tar.gz"
      sha256 "66db208bcb4cd359658980e965803683d674e8d554ad1ccd24f6a5bc37d1c25e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.56/reactor-cli_v1.20261021.56_linux-arm64.tar.gz"
      sha256 "042b1d5440dfcc1dc57dc1f680d626d2c12937a9c4daed61440e83da5572b0a2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261021.56/reactor-cli_v1.20261021.56_linux-amd64.tar.gz"
      sha256 "71ac40f0254f29392471c8da378a38e7390c0dedb2b977702ad6025ae7eb8899"
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
