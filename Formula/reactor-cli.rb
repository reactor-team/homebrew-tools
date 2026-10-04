# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261004.160"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.160/reactor-cli_v1.20261004.160_darwin-arm64.tar.gz"
      sha256 "3a2c000633ef9ed7e6304984b47ea66b45025cfc6595e0276b46936885fcd661"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.160/reactor-cli_v1.20261004.160_darwin-amd64.tar.gz"
      sha256 "21b6bc1b2cfe090167170db51394f6337168f10aaf65beb2c110b7bcab619662"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.160/reactor-cli_v1.20261004.160_linux-arm64.tar.gz"
      sha256 "1a16d7321ef0a7894fa5335bdb34b111a29d2cdd0de2d13c3559f41cd7efd432"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261004.160/reactor-cli_v1.20261004.160_linux-amd64.tar.gz"
      sha256 "6ce28ea90bb7010abb9613ce8caadb90fb0197e9392564c7078fa9767d6485bb"
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
