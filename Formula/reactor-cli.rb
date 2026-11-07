# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261106.546"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.546/reactor-cli_v1.20261106.546_darwin-arm64.tar.gz"
      sha256 "9e98a164c626c72d9ba9fc4dc57ac6d7c4897da8be8fa0f0a9d31f22a4decab8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.546/reactor-cli_v1.20261106.546_darwin-amd64.tar.gz"
      sha256 "11ae5d7bdefc5d8b039715317d9028dcbd8be3f07a1839529073bee61ef0397f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.546/reactor-cli_v1.20261106.546_linux-arm64.tar.gz"
      sha256 "8fa8351b5d531c255e2ba219d6ed7d2f8790722882a6c60c933e81e19a61bff9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261106.546/reactor-cli_v1.20261106.546_linux-amd64.tar.gz"
      sha256 "b73a4bab9661e6c279cd5077a477c9458e4d3e049f5dde0ca0fc714c87988cd5"
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
