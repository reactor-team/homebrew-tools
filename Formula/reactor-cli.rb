# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.106"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.106/reactor-cli_v1.20261024.106_darwin-arm64.tar.gz"
      sha256 "577560a808296c405d5ccb560619d2616af36e0e06fd985fd3ac2a049260b438"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.106/reactor-cli_v1.20261024.106_darwin-amd64.tar.gz"
      sha256 "702f4432645ebcc4abc154b6d11c796b2f19cb689e794314f6a563ee42724f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.106/reactor-cli_v1.20261024.106_linux-arm64.tar.gz"
      sha256 "f0e2c2155d1e5d3b62b7f100772c9ce93eeda9103d80423fbab605af267bb857"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.106/reactor-cli_v1.20261024.106_linux-amd64.tar.gz"
      sha256 "5de5941730f5ffc7cb9f9dd60e453ce2f4554ab09668fd9ff123194306459bed"
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
