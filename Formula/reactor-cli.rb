# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.408"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.408/reactor-cli_v1.20261112.408_darwin-arm64.tar.gz"
      sha256 "2a67b864ecaee15fcc32f1ce1f39473a646b72c98cc5ef44b72e8df04af8d65d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.408/reactor-cli_v1.20261112.408_darwin-amd64.tar.gz"
      sha256 "1dedee0b1cea93cd7b8a89d4a6e92a66e234442dab39934928cf0f43815be10c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.408/reactor-cli_v1.20261112.408_linux-arm64.tar.gz"
      sha256 "5817de1eda475f95a810804e5ac8006cfc27bee8dafce1b0fb62058b01bd2049"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.408/reactor-cli_v1.20261112.408_linux-amd64.tar.gz"
      sha256 "07494f7ac34b78131d063f4b098c982bca3625bfc5a124e136c767b78a2fab7a"
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
