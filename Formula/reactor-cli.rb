# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.413"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.413/reactor-cli_v1.20261013.413_darwin-arm64.tar.gz"
      sha256 "cca50804100d4fa2ddf782d2a4796f5a84041753076112096e9df34ded6e9d27"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.413/reactor-cli_v1.20261013.413_darwin-amd64.tar.gz"
      sha256 "0d7493dba1ae7a6dcc3eb1918d4bfae71c370e08b95b1eff3869659c246205a7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.413/reactor-cli_v1.20261013.413_linux-arm64.tar.gz"
      sha256 "ac5fd1bd6659df4139b011c5b863e790539d0176aaed445919c07cac02cfde37"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.413/reactor-cli_v1.20261013.413_linux-amd64.tar.gz"
      sha256 "00294d8953481c019251b55bb1d80966ca4f76afcdffef0170be8f2183baee77"
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
