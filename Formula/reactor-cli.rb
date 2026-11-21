# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261121.9"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.9/reactor-cli_v1.20261121.9_darwin-arm64.tar.gz"
      sha256 "997c46506ebc5af51e0a13f04d759a28f17f2679d2679d5dddddf6fcbc39a2eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.9/reactor-cli_v1.20261121.9_darwin-amd64.tar.gz"
      sha256 "379291c0c1678d7948077d8cf92f6414e918fcc28e755d9c945592d8d41d9b2a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.9/reactor-cli_v1.20261121.9_linux-arm64.tar.gz"
      sha256 "1b1d46e4777fc1b11f3cbe54c286d47b19647ae6196f057062298fa183ca4c4a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261121.9/reactor-cli_v1.20261121.9_linux-amd64.tar.gz"
      sha256 "ce3f4a6e3170b29528b146689890a4617bf8dc33b3b441e2459b1ba350b85b2c"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
