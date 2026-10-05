# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.356"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.356/reactor-cli_v1.20261005.356_darwin-arm64.tar.gz"
      sha256 "9976eec874dc7d18c061a1c23c0378e781eaa576747cab7e89e69dfcff54650d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.356/reactor-cli_v1.20261005.356_darwin-amd64.tar.gz"
      sha256 "e107acaff034f069e6bad498fa3d33773c9a442d297140c36af9910ddea50e19"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.356/reactor-cli_v1.20261005.356_linux-arm64.tar.gz"
      sha256 "1f6d8649e1f5863754f570f6adbd7b944aebb39fa800029ed240fd1a99f3f158"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.356/reactor-cli_v1.20261005.356_linux-amd64.tar.gz"
      sha256 "cb313a4f33a871000129a9aa761271d904ce689d62c25458d09f2f5a387f0ba7"
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
