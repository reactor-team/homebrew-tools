# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.74"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.74/reactor-cli_v1.20261009.74_darwin-arm64.tar.gz"
      sha256 "e2a1a1579774bd24417163aa349d7309761b885793eaa94fc2fc419e636a993a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.74/reactor-cli_v1.20261009.74_darwin-amd64.tar.gz"
      sha256 "ac905a8700551379092d596cb29133cf7a3c6735495dc1b225ec8537b6bdb712"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.74/reactor-cli_v1.20261009.74_linux-arm64.tar.gz"
      sha256 "03a8cfec22db7ee270d9a74b8ca263ab4d4aee883e2e8e0a7bb4423b0aec99e1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.74/reactor-cli_v1.20261009.74_linux-amd64.tar.gz"
      sha256 "2d19361a01ab79bd018c9f69b7e6ef834b14ac3ecf0cab4202ae159cb03194ed"
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
