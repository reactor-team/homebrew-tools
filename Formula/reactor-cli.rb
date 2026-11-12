# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.458"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.458/reactor-cli_v1.20261111.458_darwin-arm64.tar.gz"
      sha256 "bf6ed4723257fec77f7a82d3ecee29dd6c110f4723998458ce6eece3628af521"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.458/reactor-cli_v1.20261111.458_darwin-amd64.tar.gz"
      sha256 "182f48e37054042a817eaa2c8fb16210e0ebe010a5f5da97134ad02f3cd90711"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.458/reactor-cli_v1.20261111.458_linux-arm64.tar.gz"
      sha256 "101f0b002478e1ea85c8372cac0390007a33edd0520b17dee054350c920bd019"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.458/reactor-cli_v1.20261111.458_linux-amd64.tar.gz"
      sha256 "630d03b83d27b71d07199ae94b4411892d301b54f094e90d6ea2929dd0dd6b83"
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
