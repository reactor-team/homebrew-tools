# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260609.15544"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15544/reactor-cli_v1.20260609.15544_darwin-arm64.tar.gz"
      sha256 "8e621e4ce5d0f9cc64e184e57e3a03f2ca4e413cc9dc0f93c943d9c09f0ff4dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15544/reactor-cli_v1.20260609.15544_darwin-amd64.tar.gz"
      sha256 "f2be57fcb333fdd7960cc0bce8ac65cc6302f24354b5301961e38518a60bc2a3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15544/reactor-cli_v1.20260609.15544_linux-arm64.tar.gz"
      sha256 "0f05dba7450a00a464b1ce783c755731f03ab50f1e18ebe2f2a1227a61dd6090"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15544/reactor-cli_v1.20260609.15544_linux-amd64.tar.gz"
      sha256 "a5e0ee2a149cc3de291d24fa56f68b77a33f1b4e0cc63129fd59b219b38c69c0"
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
