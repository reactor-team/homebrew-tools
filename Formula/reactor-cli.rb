# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260605.15300"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260605.15300/reactor-cli_v1.20260605.15300_darwin-arm64.tar.gz"
      sha256 "d40df5f6435e190dc7833fd47e7ca5fa8e5b14b0ea2cb3d9fd7c8d33291ca95f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260605.15300/reactor-cli_v1.20260605.15300_darwin-amd64.tar.gz"
      sha256 "ab1d591d218dca24af1ba09f6e8138e74778a4a29c059bff145ea8a2ce5ea606"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260605.15300/reactor-cli_v1.20260605.15300_linux-arm64.tar.gz"
      sha256 "73a9327bdc2f90187f0bb2c2df142cbaffd963fa28c0087293c2259d778e3151"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260605.15300/reactor-cli_v1.20260605.15300_linux-amd64.tar.gz"
      sha256 "3b26680e447c85773e74247d04875825d8e30e2d34e869d6d0b4e840f8bcb250"
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
