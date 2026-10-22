# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261022.35"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.35/reactor-cli_v1.20261022.35_darwin-arm64.tar.gz"
      sha256 "add7cba7ec96e70bd398b09e4ae5af5773e31272d450427097f7d12fb7474085"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.35/reactor-cli_v1.20261022.35_darwin-amd64.tar.gz"
      sha256 "69c00c4f4148ab6c6ca5d61d8f6484de0dca0a21d690c90fe0b2cc785ba9fce1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.35/reactor-cli_v1.20261022.35_linux-arm64.tar.gz"
      sha256 "ef958f9cc726f585c56ba90002075f20662405119619756fb15442f414f2b35e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261022.35/reactor-cli_v1.20261022.35_linux-amd64.tar.gz"
      sha256 "55891e6e9cd759023a74777ab244d3ed3475337259c2620c32042d8668d51909"
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
