# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.152"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.152/reactor-cli_v1.20261023.152_darwin-arm64.tar.gz"
      sha256 "0adc5aea0bba255e3a9c832c22330ad4a07568458d353cda4ffa8d1dad4c38b2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.152/reactor-cli_v1.20261023.152_darwin-amd64.tar.gz"
      sha256 "2a622704b370195ac2e0664a1f92467ae16b5812fe3dbe7d87764d3886340115"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.152/reactor-cli_v1.20261023.152_linux-arm64.tar.gz"
      sha256 "f41ef0321d8b6915ed492f7de7bb494322f70020714cf7f4860e5161ee473f76"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.152/reactor-cli_v1.20261023.152_linux-amd64.tar.gz"
      sha256 "090dfdca82e22f6500ad40ce5918af17b8ba16e58e57a27456af13b5a440159f"
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
