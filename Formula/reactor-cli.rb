# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28844"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28844/reactor-cli_v1.20260928.28844_darwin-arm64.tar.gz"
      sha256 "bbd72718ae116d82ee8095265d360513d1ed51c2c1aee37b20051b8a74970a2d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28844/reactor-cli_v1.20260928.28844_darwin-amd64.tar.gz"
      sha256 "51aba58e4823d5c31cbc6b23ce8d9b145affd993762fafa704d0080b33cddb54"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28844/reactor-cli_v1.20260928.28844_linux-arm64.tar.gz"
      sha256 "4b9ad38e128097cc5966083618cad173fe3a88c0800a792ab3d15f1a14ab5877"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28844/reactor-cli_v1.20260928.28844_linux-amd64.tar.gz"
      sha256 "4ffc15bd68d2ce40bcbc716a9bae7bce447616829b3cf7a0c09cbebb73eda658"
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
