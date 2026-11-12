# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.209"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.209/reactor-cli_v1.20261112.209_darwin-arm64.tar.gz"
      sha256 "84b6470f886a0b3d215ff68e1650f32c2eb5479c9a1b9f3b339faf1082bba40a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.209/reactor-cli_v1.20261112.209_darwin-amd64.tar.gz"
      sha256 "671be2bec6f8811953a2fee233fc486c492f5fea8afe9a70c27b71610680a76a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.209/reactor-cli_v1.20261112.209_linux-arm64.tar.gz"
      sha256 "dcb31f70e8811194049e144a0d4cff32d69de94d9b9ad7ba9bec549d964ac22d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.209/reactor-cli_v1.20261112.209_linux-amd64.tar.gz"
      sha256 "b4fa83933c79a2eb8585655d22ba658b7ec4070c6e112a75f6340e10931748a1"
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
