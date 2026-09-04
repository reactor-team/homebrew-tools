# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.25030"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25030/reactor-cli_v1.20260904.25030_darwin-arm64.tar.gz"
      sha256 "60709d35f07db9d56970135827b975e9604126cc5e77c6a6e4b925e144ef5d2e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25030/reactor-cli_v1.20260904.25030_darwin-amd64.tar.gz"
      sha256 "8b09ecb2f83b12df7e475f8375971c39194ec9301426c34d43f201fa57286478"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25030/reactor-cli_v1.20260904.25030_linux-arm64.tar.gz"
      sha256 "cf0832494fd7f215649f7f4f796c731d9e38fad816f6ba13230fff2cb5a56d55"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25030/reactor-cli_v1.20260904.25030_linux-amd64.tar.gz"
      sha256 "49dc69096b084c41f4b62988725b21615ef6078100cc538f66f17920a16364f9"
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
