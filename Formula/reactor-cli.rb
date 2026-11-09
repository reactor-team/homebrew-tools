# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.480"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.480/reactor-cli_v1.20261109.480_darwin-arm64.tar.gz"
      sha256 "5f9964f3bcb470b5d539475e0c17bdb4e2fb3665fdf4a9a531a5fb7e92c42c67"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.480/reactor-cli_v1.20261109.480_darwin-amd64.tar.gz"
      sha256 "0277506ec5787a449102d7d9b508961357c86b70a12ee7208593ba8e165157ca"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.480/reactor-cli_v1.20261109.480_linux-arm64.tar.gz"
      sha256 "08d1fc3e7eb80566a9d9752b86881ae5b42f4a21a6ed7a7b9c84ff818c6f3868"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.480/reactor-cli_v1.20261109.480_linux-amd64.tar.gz"
      sha256 "00d17de554315a8be2b45e93d1f5661e68659b5c8f224cd62798a298bf476001"
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
