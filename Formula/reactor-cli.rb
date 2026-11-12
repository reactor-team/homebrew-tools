# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.97"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.97/reactor-cli_v1.20261112.97_darwin-arm64.tar.gz"
      sha256 "bd246e66eab040d5d7fdf1f6d44efaf98610ebad59b951edfaff7f3b6844f8a8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.97/reactor-cli_v1.20261112.97_darwin-amd64.tar.gz"
      sha256 "6b12af2c3a510fb3aeb238cfcbe7aba88eb3b54ee6b70779f9e73d9b14108646"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.97/reactor-cli_v1.20261112.97_linux-arm64.tar.gz"
      sha256 "7891dcfe393c927fbc7c2815e88f2a8ebf0df3bee7f396ed9289308fce5d4cfe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.97/reactor-cli_v1.20261112.97_linux-amd64.tar.gz"
      sha256 "9e0f1fd512d057fe3e4b1ade7bbf0108f963abd99416a75c0248dfb636269a96"
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
