# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260611.15771"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15771/reactor-cli_v1.20260611.15771_darwin-arm64.tar.gz"
      sha256 "21eb48a3f3e5b30a65b31705af518851f8b831701d1f8c11dcf91d70a09c546c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15771/reactor-cli_v1.20260611.15771_darwin-amd64.tar.gz"
      sha256 "6655dba5bd8daae9d90b9310a78fdd617dc4e4d66338947b9a1503800169db66"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15771/reactor-cli_v1.20260611.15771_linux-arm64.tar.gz"
      sha256 "b6c6d1f52fa249c4bbf82f26870bd0917023f84dec876586912807dcae08d4cc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15771/reactor-cli_v1.20260611.15771_linux-amd64.tar.gz"
      sha256 "bd2c4220790ece999a526d881d2cdb0a3a21f0ac2d369c72077e545f10fa74cd"
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
