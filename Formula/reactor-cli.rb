# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16846"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16846/reactor-cli_v1.20260627.16846_darwin-arm64.tar.gz"
      sha256 "1cfc1d3654653328b67ddd0002fef99372afc007829600962b44ab7d0a1c4e8d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16846/reactor-cli_v1.20260627.16846_darwin-amd64.tar.gz"
      sha256 "9904df4e5a29fea1be88bf38f3f977417a49c8e630656c4d98a7545fc34369da"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16846/reactor-cli_v1.20260627.16846_linux-arm64.tar.gz"
      sha256 "a028afb3c00cbb0fd2dd709446a0e257f14ce4c475a5ce389a07dd0d002180e5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16846/reactor-cli_v1.20260627.16846_linux-amd64.tar.gz"
      sha256 "332c388c1556118bd12672dbc461a0c53aa2751f4de12609a05aa45b94764e79"
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
