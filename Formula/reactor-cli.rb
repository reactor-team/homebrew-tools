# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24226"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24226/reactor-cli_v1.20260901.24226_darwin-arm64.tar.gz"
      sha256 "94727b04b1351d3400bd3d1f9309c913e2dfac1276538d34dedaf68c27d55f59"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24226/reactor-cli_v1.20260901.24226_darwin-amd64.tar.gz"
      sha256 "8a6bc16f025109005c767dfdf713e14e2bf050a098414cbc56e7984b7b699cb0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24226/reactor-cli_v1.20260901.24226_linux-arm64.tar.gz"
      sha256 "2931ec91629aeb62c970030768ad952654fa0f5d1ac275b25bab8dd53a35347d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24226/reactor-cli_v1.20260901.24226_linux-amd64.tar.gz"
      sha256 "ebd5a081418af696bbeed5bb84fb3dfd89fa1eecac3f162b2d1de8dbbd8771f6"
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
