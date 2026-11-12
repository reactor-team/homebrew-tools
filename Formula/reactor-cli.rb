# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.428"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.428/reactor-cli_v1.20261111.428_darwin-arm64.tar.gz"
      sha256 "3810f4de3e8bcf9c16b1643b9245e320481528500ef52dc7e75d537f2a050e09"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.428/reactor-cli_v1.20261111.428_darwin-amd64.tar.gz"
      sha256 "29b536cca1332bd1d8575aa53327188febc5dca280fcd1871627b2ee56a180d0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.428/reactor-cli_v1.20261111.428_linux-arm64.tar.gz"
      sha256 "63d1bfc0fee1d8ce816eb2ddfa36ad8d2947507054e7c928b2b54cdf450d9fdd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.428/reactor-cli_v1.20261111.428_linux-amd64.tar.gz"
      sha256 "bcc4cc47c56de88bf9019de48c4e69bb21dcca2438ad252a4ca5ccf1bdcb71a8"
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
