# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.2/reactor-cli_v1.20261110.2_darwin-arm64.tar.gz"
      sha256 "3eaca764048511ad4ceffb966b4b195ff0048ce040de61180b9d76bb2cd95a3e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.2/reactor-cli_v1.20261110.2_darwin-amd64.tar.gz"
      sha256 "52200393ba55f989913ee0c7db668933dc6ad05ba2549f881f09ad76055f4fb5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.2/reactor-cli_v1.20261110.2_linux-arm64.tar.gz"
      sha256 "0d2d4075901e269a7c1ea92973aa249603044a00a01401ff2e7cfc617871905b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.2/reactor-cli_v1.20261110.2_linux-amd64.tar.gz"
      sha256 "d60d9c43290f2a125cc0b53cfb2a7858d5a48224fa89bde932207638ea96b3c6"
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
