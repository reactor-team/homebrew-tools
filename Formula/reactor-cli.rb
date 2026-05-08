# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260508.7"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.7/reactor-cli_v1.20260508.7_darwin-arm64.tar.gz"
      sha256 "a49b69658b92e03b8556ac085db42f70793d3f21150cf70bda23d14e8a5739d2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.7/reactor-cli_v1.20260508.7_darwin-amd64.tar.gz"
      sha256 "c14b11b551c2efcd5ba33266a468dc6b9a8628ebd376b2ce2988cf3b0f72e339"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.7/reactor-cli_v1.20260508.7_linux-arm64.tar.gz"
      sha256 "09de6b432c590f7b53f0a569ad756991df93c4391574a6bb110b3f9cc827d113"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260508.7/reactor-cli_v1.20260508.7_linux-amd64.tar.gz"
      sha256 "4ba5097884f6b67a3da4b131a4af76cc7ae45f53deac6384c6ca61917be1f7dd"
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
