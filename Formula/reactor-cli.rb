# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260921.28055"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28055/reactor-cli_v1.20260921.28055_darwin-arm64.tar.gz"
      sha256 "3370687beedad089456f45207a1512c65a258eb605ca3434e11570c275db5716"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28055/reactor-cli_v1.20260921.28055_darwin-amd64.tar.gz"
      sha256 "0c0ef75a1df7ce3beb5d5cfeddbc904ffbce8e0ca2027bd4b5497f61d4b1d1b3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28055/reactor-cli_v1.20260921.28055_linux-arm64.tar.gz"
      sha256 "0c820129b65e32f8a2d3e733581bc88c3b1259f1d0c83b4ec26f08ebe347ba4d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28055/reactor-cli_v1.20260921.28055_linux-amd64.tar.gz"
      sha256 "baf886c0ba79ff7ac6ee7667b3f542abbc0c73070935a4f269dc05486b53c0ac"
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
