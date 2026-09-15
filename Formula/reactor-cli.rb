# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260915.26740"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26740/reactor-cli_v1.20260915.26740_darwin-arm64.tar.gz"
      sha256 "b0c10f7e50fd0cf3f082d87f0ef1e5954b576feb84a38f6990e0fd2b4eae0ce9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26740/reactor-cli_v1.20260915.26740_darwin-amd64.tar.gz"
      sha256 "58e4b094e9c4c60dac443b8bb44224c708eda1e627e50e44d923533660ec9c20"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26740/reactor-cli_v1.20260915.26740_linux-arm64.tar.gz"
      sha256 "f6cdfb46802d625f490c17f9b4cdf78fc239d26c91f3d758d109a95ceed49b54"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260915.26740/reactor-cli_v1.20260915.26740_linux-amd64.tar.gz"
      sha256 "aeeab03ce4abd6132d9497cb7dbdf86c039965ea0d8c7a7db5b16d0b626de757"
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
