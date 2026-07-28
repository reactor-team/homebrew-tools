# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260728.19815"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19815/reactor-cli_v1.20260728.19815_darwin-arm64.tar.gz"
      sha256 "edac4dc54195014d439beb7dc579a848a85eceec4f11fccf6dc08a4de16bfd8c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19815/reactor-cli_v1.20260728.19815_darwin-amd64.tar.gz"
      sha256 "421fdd1b8b70c2328a351f79dd32ce5b7e62568ce9f8c36fc9280e14c8d62f82"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19815/reactor-cli_v1.20260728.19815_linux-arm64.tar.gz"
      sha256 "58e35e37e8c7a5a42f37957ef8d519649f664314c453eca953db6ddb4f9472a6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260728.19815/reactor-cli_v1.20260728.19815_linux-amd64.tar.gz"
      sha256 "71dadc7f670043053b71c6c085d436486f9c3033707b63d923f14d5fb2116d36"
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
