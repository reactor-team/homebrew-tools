# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260921.28058"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28058/reactor-cli_v1.20260921.28058_darwin-arm64.tar.gz"
      sha256 "f28398d3a207eb384597c9bde8141c4951b99776d971c5ce8b8e91cb58300a5e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28058/reactor-cli_v1.20260921.28058_darwin-amd64.tar.gz"
      sha256 "6a4d5fdf0c324b65992220fbde8be9dea45e66e549988960efedf1e9f16c4a1e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28058/reactor-cli_v1.20260921.28058_linux-arm64.tar.gz"
      sha256 "008d12cafa311789071d8ca4688b02ade89d13140e6f5151cb7ed48d169af60e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28058/reactor-cli_v1.20260921.28058_linux-amd64.tar.gz"
      sha256 "5dcc0251c2868a3a6c2b0bbea53c05c5160cf6bfff57ef15773c8023d15a3f9b"
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
