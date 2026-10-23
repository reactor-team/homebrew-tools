# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261023.46"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.46/reactor-cli_v1.20261023.46_darwin-arm64.tar.gz"
      sha256 "56710b5e38b23a2c67dbcc16701d006374c241f1d41603be3497ece4f14f1ac7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.46/reactor-cli_v1.20261023.46_darwin-amd64.tar.gz"
      sha256 "70dcc07172ba7862dc938e4c14549f9d3bbecd59e2530ed5eb9180fbd87e27f1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.46/reactor-cli_v1.20261023.46_linux-arm64.tar.gz"
      sha256 "11cbe7a811626b2c25e8f4caf25cc24150f2fdad82a02270ba93ad2fe23bca09"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261023.46/reactor-cli_v1.20261023.46_linux-amd64.tar.gz"
      sha256 "2b63d9c2aeb1ae5581df9e3f3d52f360207c31ce75328cdd88615d4624eb7734"
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
