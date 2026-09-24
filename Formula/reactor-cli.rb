# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260924.28389"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28389/reactor-cli_v1.20260924.28389_darwin-arm64.tar.gz"
      sha256 "83cc566ff82faced228e555bebdc56b3fb1e87d8ed4a06114907eb48b57807ab"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28389/reactor-cli_v1.20260924.28389_darwin-amd64.tar.gz"
      sha256 "a619348f78d4f3cc5ebf7fba11b6103ed8f6836d7ade196c452c900b0aa211bf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28389/reactor-cli_v1.20260924.28389_linux-arm64.tar.gz"
      sha256 "167a7c98dce3bcf2a8392fd25c4b646c295bed8222934cb28c3de6a7a0366ace"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28389/reactor-cli_v1.20260924.28389_linux-amd64.tar.gz"
      sha256 "b37dc37c287764ec284b8c1e8db0893e412bfe5432682f983f955209c6c8887e"
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
