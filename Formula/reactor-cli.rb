# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24396"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24396/reactor-cli_v1.20260901.24396_darwin-arm64.tar.gz"
      sha256 "3430fc882ba4469031d88a583159d339fa7ddeba0a8670a5b2ad17d6c7e0ebda"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24396/reactor-cli_v1.20260901.24396_darwin-amd64.tar.gz"
      sha256 "cc48e0c210ddb0f77cb989f7a08864c6cac9fb1667d35be88400824df86a8027"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24396/reactor-cli_v1.20260901.24396_linux-arm64.tar.gz"
      sha256 "ca1e53dff52c3bb04dbd878c4b9a1b71ac3c6ebe5f69e27ed179b197a52fedd7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24396/reactor-cli_v1.20260901.24396_linux-amd64.tar.gz"
      sha256 "3b32cca5d32b1fa43e7c39d9f0c8f856dc4f08922885f6a7a395211d947d0977"
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
