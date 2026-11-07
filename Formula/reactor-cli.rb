# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261107.129"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.129/reactor-cli_v1.20261107.129_darwin-arm64.tar.gz"
      sha256 "e597120ff5a28131ca950e32d06122f30e681d2699b377eba7b00941c9d00688"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.129/reactor-cli_v1.20261107.129_darwin-amd64.tar.gz"
      sha256 "e8b64490f8c0ff229115ec43956620a1a60604239086d5de547dfda4c2c6a462"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.129/reactor-cli_v1.20261107.129_linux-arm64.tar.gz"
      sha256 "170a9ae60ded4da5fb1950ca2a2a3b8bcb58c2086f18a81aae51d4228d256525"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.129/reactor-cli_v1.20261107.129_linux-amd64.tar.gz"
      sha256 "4bfd19aaf2bf12af68d4893e4d9e5dddde4a373b11364063ddfc7241627ca3b3"
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
