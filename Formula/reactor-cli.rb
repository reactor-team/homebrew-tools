# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.41"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.41/reactor-cli_v1.20261009.41_darwin-arm64.tar.gz"
      sha256 "b85605bac63ef789ae107ce6d14adc057fdf3be7af9d4cd3fda22522cc9927e1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.41/reactor-cli_v1.20261009.41_darwin-amd64.tar.gz"
      sha256 "67bdedef65f4459dc925177611eb2102503f19a19b986f6ec639774a6a727713"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.41/reactor-cli_v1.20261009.41_linux-arm64.tar.gz"
      sha256 "4f81388164c947b3d157fb41dd928efda2d2ed2fc88cf4efb9d9a5dd9c299262"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.41/reactor-cli_v1.20261009.41_linux-amd64.tar.gz"
      sha256 "c410b087d498b0fd4f620a89492234ce821c88c942af2c20db6a21d6323490f4"
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
