# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261005.332"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.332/reactor-cli_v1.20261005.332_darwin-arm64.tar.gz"
      sha256 "7db7b040a11b408a476a44aa2421944af9497cd4126ffb4085f4f2aa83677ebb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.332/reactor-cli_v1.20261005.332_darwin-amd64.tar.gz"
      sha256 "d32e03f938a3b7fa3cf7951be6032713a9dd804106a3dbcf685fc6dc255545c3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.332/reactor-cli_v1.20261005.332_linux-arm64.tar.gz"
      sha256 "6e5a772cf3fad89b079ab42ea921ae131031cbf86b5d85890456e4929bc94bb2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261005.332/reactor-cli_v1.20261005.332_linux-amd64.tar.gz"
      sha256 "04d3305ab714dadc046500191435d4d9b5646822d5b8273ced8cc1255864ef18"
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
