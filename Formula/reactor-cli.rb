# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16840"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16840/reactor-cli_v1.20260627.16840_darwin-arm64.tar.gz"
      sha256 "a5ee5314b3f7c3a273a462ac114a92f0e356ffa76d320ea53c27bd657093c6ff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16840/reactor-cli_v1.20260627.16840_darwin-amd64.tar.gz"
      sha256 "c62267e6570ea72eceeee3478a0be0eb822919059eb0b87fcce8a38cd4887355"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16840/reactor-cli_v1.20260627.16840_linux-arm64.tar.gz"
      sha256 "176267cfd15fafbdd2c6d250d2799318f40474bcdf1195a19ec3a332799db759"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16840/reactor-cli_v1.20260627.16840_linux-amd64.tar.gz"
      sha256 "3f08777e1ab71ccb87328a013cbe3c6041a7dc8895d82c116d007e870f482b7e"
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
