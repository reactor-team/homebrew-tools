# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.267"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.267/reactor-cli_v1.20261020.267_darwin-arm64.tar.gz"
      sha256 "5cd34d8af9628d5615e1c88a2e5180475435f6cc95fec3062e2c9e931467dfa9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.267/reactor-cli_v1.20261020.267_darwin-amd64.tar.gz"
      sha256 "b8f4beb72cfd08a1240cf38242ad5abd3fc88d5be0b23c3f23accab8131be528"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.267/reactor-cli_v1.20261020.267_linux-arm64.tar.gz"
      sha256 "89790b1046415005ff52361551b49562f06069225d8363548fcbf45af222841e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.267/reactor-cli_v1.20261020.267_linux-amd64.tar.gz"
      sha256 "56f871798ca6c08e812acd52f534aa71f141fd6d3579b0b7f3ac8230fc2d768f"
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
