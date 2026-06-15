# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260615.16045"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16045/reactor-cli_v1.20260615.16045_darwin-arm64.tar.gz"
      sha256 "6bcfecda9d8da89dbd315df9fe5b1101f65764a6ca7f645cdd7e6d5955f6ee9b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16045/reactor-cli_v1.20260615.16045_darwin-amd64.tar.gz"
      sha256 "f223c076f114250f9ca28f5410d863379f4d307cbc0d0cd12c9272fa2b1f072a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16045/reactor-cli_v1.20260615.16045_linux-arm64.tar.gz"
      sha256 "d165aaa29bc9374d98152b9c1c330d309d8e07dd064b51a8c803e876df3dbfdb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16045/reactor-cli_v1.20260615.16045_linux-amd64.tar.gz"
      sha256 "9a7de6695363e06d794b3122bfb6fef5486f62bae4f2d7c14bc36f1aa9be59c0"
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
