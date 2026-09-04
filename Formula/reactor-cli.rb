# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.25103"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25103/reactor-cli_v1.20260904.25103_darwin-arm64.tar.gz"
      sha256 "264bb7b28623b1abb828a6180d529b3e5c310ec9c1826d722d3f9450117fb431"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25103/reactor-cli_v1.20260904.25103_darwin-amd64.tar.gz"
      sha256 "db852de4a426f86941fa7d6c4b7254754aac74566eac1f5a44d3728cc29c6e08"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25103/reactor-cli_v1.20260904.25103_linux-arm64.tar.gz"
      sha256 "919b2e41ba4038e109e1b120c837c782bb9c05b5e28c411a33a8ce62612d87bb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25103/reactor-cli_v1.20260904.25103_linux-amd64.tar.gz"
      sha256 "c069b42069931d7f171343682efac1166223f624363c6cbe900a4300f04266be"
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
