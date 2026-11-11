# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.359"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.359/reactor-cli_v1.20261111.359_darwin-arm64.tar.gz"
      sha256 "35bf4725ad8592664f0c8311be852c72596578904f4e8c0b6caef871e15e1f16"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.359/reactor-cli_v1.20261111.359_darwin-amd64.tar.gz"
      sha256 "24058c41e2ee044dc812ded025824d8b0b6d16164719cd4ca2e44e887cc68596"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.359/reactor-cli_v1.20261111.359_linux-arm64.tar.gz"
      sha256 "e1b14c28c8d2a35bd07c2c498ca5ce94acc3965520b9903f3032c37c080e69fa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.359/reactor-cli_v1.20261111.359_linux-amd64.tar.gz"
      sha256 "0cbd0d5d5e9d011232f76e2a3d9ef25895b9336087d54a16545d050cd50c9da8"
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
