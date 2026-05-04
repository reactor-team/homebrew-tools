# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260504.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260504.5/reactor-cli_v1.20260504.5_darwin-arm64.tar.gz"
      sha256 "20a97cd43ff83829975be6d4a14636607b77a9b42ef29495f061b90356a075e3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260504.5/reactor-cli_v1.20260504.5_darwin-amd64.tar.gz"
      sha256 "ab5713ae747a193e372e05b331283e88fbe28b55a7c62375c8d832f71df98f32"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260504.5/reactor-cli_v1.20260504.5_linux-arm64.tar.gz"
      sha256 "e6c70420c9967163841a848a0ebe6f6f19c5cdd01705bb004a9747aa5ad9ca28"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260504.5/reactor-cli_v1.20260504.5_linux-amd64.tar.gz"
      sha256 "59cd55691e79229c6d0afcf568ecc90c9e7672d5b9f85627fc3beaf8f30e9ed0"
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
