# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.257"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.257/reactor-cli_v1.20261002.257_darwin-arm64.tar.gz"
      sha256 "f2b919daeae2c281243bb5a76623af188a9f036b2cb62d4944d759f33c4e0687"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.257/reactor-cli_v1.20261002.257_darwin-amd64.tar.gz"
      sha256 "18e4160fea0c185cc277be43fc4ba1e7e1fdd5602c651fe7fd5d1693d4960556"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.257/reactor-cli_v1.20261002.257_linux-arm64.tar.gz"
      sha256 "d92761fecfa6fe4e55fd5835b61630fbedf8ee7a01c21add7d0397a757ead372"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.257/reactor-cli_v1.20261002.257_linux-amd64.tar.gz"
      sha256 "87c89f77b249a725843c0a9aabada7737ea9a7481ef2733dd3154a9da47bd266"
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
