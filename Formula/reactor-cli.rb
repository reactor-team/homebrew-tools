# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260602.14838"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14838/reactor-cli_v1.20260602.14838_darwin-arm64.tar.gz"
      sha256 "b438e7ab72e2a4dd627593942e49e6652e9f9758cdf8a085164ee2299e62af8b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14838/reactor-cli_v1.20260602.14838_darwin-amd64.tar.gz"
      sha256 "1542a24fcc7c95c630b1e192ef9d5cbbad93287b8fff525cb9e329180d390764"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14838/reactor-cli_v1.20260602.14838_linux-arm64.tar.gz"
      sha256 "834f829ab6ea019fbe04a024c40daea846306776cfb7a8b084859dcaccb8a637"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260602.14838/reactor-cli_v1.20260602.14838_linux-amd64.tar.gz"
      sha256 "14860286aea98667a4629495e2e03f529e12cbc3b84debb4e3247274ac617bf0"
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
