# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261002.267"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.267/reactor-cli_v1.20261002.267_darwin-arm64.tar.gz"
      sha256 "43ef11fc19b7ac8a81c0b2dd96c5c3e005116f4df322910deff31dcaf83b6972"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.267/reactor-cli_v1.20261002.267_darwin-amd64.tar.gz"
      sha256 "59e5cf51446c1f9411e825fc3b26aa1ed74ba896f04ac50d81d8c982f8623938"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.267/reactor-cli_v1.20261002.267_linux-arm64.tar.gz"
      sha256 "c1e732380de56bf91ed09e6bf3169202ec64aa4d9f7dce1cdbf96cf4b04e1c2f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261002.267/reactor-cli_v1.20261002.267_linux-amd64.tar.gz"
      sha256 "e106dc64a148fccef961e16c4fdcf9a8f812a38b672431bbbfe88ee44f880e24"
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
