# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260810.21414"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21414/reactor-cli_v1.20260810.21414_darwin-arm64.tar.gz"
      sha256 "fb3a294431229ccad8aae108f903a0564e42116a7015cdb544237d254e78b01a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21414/reactor-cli_v1.20260810.21414_darwin-amd64.tar.gz"
      sha256 "a568df117196b737567bf211cea91f0acbcb725509b6002338a3faf96d0f13e1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21414/reactor-cli_v1.20260810.21414_linux-arm64.tar.gz"
      sha256 "a945ab897706480cd16369f5cc7a1f83909e9ab3e6c925f504d66f8ea23f701c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260810.21414/reactor-cli_v1.20260810.21414_linux-amd64.tar.gz"
      sha256 "030bf374fc3ae9b755febebd0e3a91fb60320d2460b746396fcc7696aa6b3f96"
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
