# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24395"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24395/reactor-cli_v1.20260901.24395_darwin-arm64.tar.gz"
      sha256 "2b5e67c95f7dbb959ea6fd7863bd0e132257ecd6f8201b7afd4a650f3d3c24a7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24395/reactor-cli_v1.20260901.24395_darwin-amd64.tar.gz"
      sha256 "de99d3d06215b2e2c19968dd1dd46e71d67019f93e25a2ad2ca6971c5ad54f4a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24395/reactor-cli_v1.20260901.24395_linux-arm64.tar.gz"
      sha256 "619f4e60f4567c9d9dab96226cc2a15a7b834f02d5fc57f7ee7059c84972c2d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24395/reactor-cli_v1.20260901.24395_linux-amd64.tar.gz"
      sha256 "49d5eda5bab508759b140d3c9bcba121d273b73799eed1328ee6a099e8e98845"
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
