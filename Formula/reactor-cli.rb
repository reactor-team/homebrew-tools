# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261102.301"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.301/reactor-cli_v1.20261102.301_darwin-arm64.tar.gz"
      sha256 "825fa23aed921b29e45861934c83de24cfd8482656ccef3531d12b7077c585eb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.301/reactor-cli_v1.20261102.301_darwin-amd64.tar.gz"
      sha256 "861c900bd72f01bf5e34286548c79ccfbb5329cc7eec109c8949b60547fc32c2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.301/reactor-cli_v1.20261102.301_linux-arm64.tar.gz"
      sha256 "191dea482395515860deaee7c92a9b450a79befe1926262f86ca9e74294bab4c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261102.301/reactor-cli_v1.20261102.301_linux-amd64.tar.gz"
      sha256 "e335192a1f3558d06963922d88666cccf22491e5fa99c2c3bef0b45ac53945d2"
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
