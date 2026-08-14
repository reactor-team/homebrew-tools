# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260814.21844"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260814.21844/reactor-cli_v1.20260814.21844_darwin-arm64.tar.gz"
      sha256 "7f166b162fb9024edee6912bb475e762bf829fd3fa6703cb4d45e8caa4136bd4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260814.21844/reactor-cli_v1.20260814.21844_darwin-amd64.tar.gz"
      sha256 "8b53f9224e039ac4535c0001064774e3a53989ca6534996ab04851ae7e1dc94d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260814.21844/reactor-cli_v1.20260814.21844_linux-arm64.tar.gz"
      sha256 "6fdd0a6ec8c4e4fac6525f11d793bb2d9b697589066cf17396f1c4158c986987"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260814.21844/reactor-cli_v1.20260814.21844_linux-amd64.tar.gz"
      sha256 "eea80a74a26c6e41ffed7adb5cb5c1d5aefa085ba74c91f6705c5fb5c5c5cc49"
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
