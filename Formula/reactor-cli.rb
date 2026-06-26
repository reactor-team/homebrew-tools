# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260626.16691"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16691/reactor-cli_v1.20260626.16691_darwin-arm64.tar.gz"
      sha256 "6c9e4b0ce82f3efd9cceb7b240ad9583006d092302e70ccd78fc8f2988385b47"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16691/reactor-cli_v1.20260626.16691_darwin-amd64.tar.gz"
      sha256 "8a27c89887bfae96d1a51578140f5b83787c4e8d3e49eadb4ac7e20615772275"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16691/reactor-cli_v1.20260626.16691_linux-arm64.tar.gz"
      sha256 "e286b7dbd5c39eef9a959ee14594f6a054d12422ff06ade0308ce443005ed6f1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260626.16691/reactor-cli_v1.20260626.16691_linux-amd64.tar.gz"
      sha256 "70b487b36bd6b8a902092a7ec0ab77e1a228db3933faf24fa1f01fcd4731b689"
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
