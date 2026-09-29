# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.104"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.104/reactor-cli_v1.20260929.104_darwin-arm64.tar.gz"
      sha256 "ef4ef34d7cc5f6a96b3cbcee5e2d2d67aa224a7d39e355f4e22ada523e990402"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.104/reactor-cli_v1.20260929.104_darwin-amd64.tar.gz"
      sha256 "8e19ea7a7ec343ef721126dd15d8a131d6aed4218d50e5e852f25adc16e444ff"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.104/reactor-cli_v1.20260929.104_linux-arm64.tar.gz"
      sha256 "af11820a7da67ada79ffde50c364731e0839b6d3e6d0e4bf1b8d48977b76c1c9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.104/reactor-cli_v1.20260929.104_linux-amd64.tar.gz"
      sha256 "4ff320006f733f4888833bcc313e5ccbe61aa98136821d809a14f6539578babc"
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
