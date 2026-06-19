# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260619.16361"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16361/reactor-cli_v1.20260619.16361_darwin-arm64.tar.gz"
      sha256 "cf7e556ad7cbaaf72a89e62c704905f336413a2426658cfe2268100cc38177a5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16361/reactor-cli_v1.20260619.16361_darwin-amd64.tar.gz"
      sha256 "1ad51db90f79e7005ab1985e98be57502cf0516e4ea3454d8283c3182d9d7cea"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16361/reactor-cli_v1.20260619.16361_linux-arm64.tar.gz"
      sha256 "1fbdac62093f1d77de297de6eb35645ed80af63ff3f0fc0c99d42b0b0b9666d4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260619.16361/reactor-cli_v1.20260619.16361_linux-amd64.tar.gz"
      sha256 "c3b0f65cf8a74ffeeb73e3b2bb1fb323ccff60570dc70d1a8969b115c7593e8d"
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
