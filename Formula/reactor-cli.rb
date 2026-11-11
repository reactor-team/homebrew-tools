# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.123"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.123/reactor-cli_v1.20261111.123_darwin-arm64.tar.gz"
      sha256 "e15706d3a8e4633b721fabf9a464c197032c182ec38ba84edecbf0477250c6f4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.123/reactor-cli_v1.20261111.123_darwin-amd64.tar.gz"
      sha256 "bbc36edc2061d450a9a15951c47ed476de3d0c8389b745ce2538294e7a2a7527"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.123/reactor-cli_v1.20261111.123_linux-arm64.tar.gz"
      sha256 "3dedf8b7657dcdff7dddc72f653bfef1969baf22c990a3206d3c8e1bb9a72f5f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.123/reactor-cli_v1.20261111.123_linux-amd64.tar.gz"
      sha256 "0f10952e07736ba3ef40fe11bc4cd2faf95f5d8d362f35ac9fccb9ba33f43b28"
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
