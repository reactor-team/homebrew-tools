# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260615.16070"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16070/reactor-cli_v1.20260615.16070_darwin-arm64.tar.gz"
      sha256 "41a80e6d3221c6f2a547761141413b91fcd465d2f07a572cb71223cc92962d61"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16070/reactor-cli_v1.20260615.16070_darwin-amd64.tar.gz"
      sha256 "d8c286821c95b643d57b887cf554a3c15cc38e81fbb8a528148186f83ccded08"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16070/reactor-cli_v1.20260615.16070_linux-arm64.tar.gz"
      sha256 "958731c1d8a829dc907da9a1781f5e7ed9de1ad328da7e3a57d326418ffe054d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16070/reactor-cli_v1.20260615.16070_linux-amd64.tar.gz"
      sha256 "1aeabf75e7d83144351ccad5ea954d68472342c9e1508a2897a45819031d9500"
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
