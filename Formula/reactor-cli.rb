# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.219"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.219/reactor-cli_v1.20261109.219_darwin-arm64.tar.gz"
      sha256 "4fdf47a4c3b87c0afed3a17309db3d29e322ecfb2e97492a69086714bfce1350"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.219/reactor-cli_v1.20261109.219_darwin-amd64.tar.gz"
      sha256 "ebbb26b5444be5d0d0289371da5953c6358d2e910b0e497a7f46b5085a56bd1a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.219/reactor-cli_v1.20261109.219_linux-arm64.tar.gz"
      sha256 "218e5ceff8daef96db5c42235e48d8b44dac1574f9672cec6e88bd825438dd8a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.219/reactor-cli_v1.20261109.219_linux-amd64.tar.gz"
      sha256 "5fc93ccc5212ac489d7baec79e4d1f102e83001bc14204387381f9f74e1d5c17"
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
