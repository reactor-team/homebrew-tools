# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260612.15913"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15913/reactor-cli_v1.20260612.15913_darwin-arm64.tar.gz"
      sha256 "418ebaa69273ba33932e40e5b4ccc923b735639792c5ef4630b4731344cad565"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15913/reactor-cli_v1.20260612.15913_darwin-amd64.tar.gz"
      sha256 "bb3b496f8e8747224b046aa73a6805b9a8edc32ddd474b1e0df1416fd5efa7d6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15913/reactor-cli_v1.20260612.15913_linux-arm64.tar.gz"
      sha256 "3b1e69e20423963990c3a0ffe5b2a258f39b9d026d92936de934c9d66f5a3252"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260612.15913/reactor-cli_v1.20260612.15913_linux-amd64.tar.gz"
      sha256 "6212a3abc1722e93a347267e21b742305f26fffc6a242949e9a22f60b5022655"
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
