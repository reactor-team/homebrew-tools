# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24403"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24403/reactor-cli_v1.20260901.24403_darwin-arm64.tar.gz"
      sha256 "7bcd80869dcd1d71265d68e58c06d95c78c01ac545071e5387b7aff000e2280a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24403/reactor-cli_v1.20260901.24403_darwin-amd64.tar.gz"
      sha256 "8ba010125fc67a3a2b5100d8b83041b1c6dfdba3dab770de1a168b1f9cd7c3d5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24403/reactor-cli_v1.20260901.24403_linux-arm64.tar.gz"
      sha256 "c2ad471dd6f29760acc2090dcc5435a427212cc02c96a0a0d64bdfbbb18f96cd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24403/reactor-cli_v1.20260901.24403_linux-amd64.tar.gz"
      sha256 "7bb9075694eacea7b4ff2726f167d83072f25fb2dcf05d0c2401482faae612db"
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
