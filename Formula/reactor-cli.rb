# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.464"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.464/reactor-cli_v1.20261109.464_darwin-arm64.tar.gz"
      sha256 "be65c3eb68234af0593568640ff914590f73884ce12f47b443616253bdf577b2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.464/reactor-cli_v1.20261109.464_darwin-amd64.tar.gz"
      sha256 "95d09f879d7e305294b7c8d346bc720c0365ea84b0bdef3470334f103cc4aeca"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.464/reactor-cli_v1.20261109.464_linux-arm64.tar.gz"
      sha256 "862f23685006d4e390bd3d03974d9c8cf862a820a6c17bf58be648be7ded40d0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.464/reactor-cli_v1.20261109.464_linux-amd64.tar.gz"
      sha256 "84f78124f31afabbb4fa88cce70e8182e6714dab8d3e17e095758cffba5be688"
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
