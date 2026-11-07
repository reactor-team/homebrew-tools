# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261107.122"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.122/reactor-cli_v1.20261107.122_darwin-arm64.tar.gz"
      sha256 "1c375659b974291642d3b8fc5c3e845321d895132ce89935f48e933f63f484f0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.122/reactor-cli_v1.20261107.122_darwin-amd64.tar.gz"
      sha256 "11fd1d4fc2a7ad48dce44aeec933a4274bdb55f7395339afe023a12d82eb3e7d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.122/reactor-cli_v1.20261107.122_linux-arm64.tar.gz"
      sha256 "ecef57b7a3765590c3f50c5ae52a7228650db5c7b5ac5acaf50c059365479efa"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261107.122/reactor-cli_v1.20261107.122_linux-amd64.tar.gz"
      sha256 "cc476b6e9fb892d866958380b82e83caaddac6e2d2357d6b022adf3e2c06ed75"
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
