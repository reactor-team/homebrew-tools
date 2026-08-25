# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260825.23179"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23179/reactor-cli_v1.20260825.23179_darwin-arm64.tar.gz"
      sha256 "abee69dd1e4478de724e08a2b403aab17d9acdc894320c17b7c8f68c3f1c069c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23179/reactor-cli_v1.20260825.23179_darwin-amd64.tar.gz"
      sha256 "595124b6c5003b5f6733a3fd51610586d82f28bec0a76782f5ef51c8662edd1f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23179/reactor-cli_v1.20260825.23179_linux-arm64.tar.gz"
      sha256 "eda835ccb33792963d4adf2ce5582a65b4f4dc62e8b72673a682e5b7beef9d27"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260825.23179/reactor-cli_v1.20260825.23179_linux-amd64.tar.gz"
      sha256 "a6ddbb073e59fd79410e15048a46fde238d69585d4081b118d71cfd0949a9316"
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
