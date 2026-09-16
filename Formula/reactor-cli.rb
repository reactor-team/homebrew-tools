# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.27259"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27259/reactor-cli_v1.20260916.27259_darwin-arm64.tar.gz"
      sha256 "410bcb5176dfc9c1c3f4c1bd9f4a8041cba3b8dc28358b4a93e31f06fd51096f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27259/reactor-cli_v1.20260916.27259_darwin-amd64.tar.gz"
      sha256 "bc92fb1c993b32cfa7d02c65faba5699cfe2142fe8451d1c533384eaddf41301"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27259/reactor-cli_v1.20260916.27259_linux-arm64.tar.gz"
      sha256 "d30259175884b1fca2045dd97e36f02fc1b9e585ad921b9ef63fced3b2d7b508"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.27259/reactor-cli_v1.20260916.27259_linux-amd64.tar.gz"
      sha256 "d39f43f032ed97e48f0ed3e76754a9370565de70500d069cde5432139832e8c5"
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
