# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260615.16057"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16057/reactor-cli_v1.20260615.16057_darwin-arm64.tar.gz"
      sha256 "b218bae96a940784f4f5f060c3fa36d2f40872e159ee7cdfb52ba1890493d59e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16057/reactor-cli_v1.20260615.16057_darwin-amd64.tar.gz"
      sha256 "1ab906f38a404389db35ffbd8331a0c31bc43c078225bf9ba1fff1916446e829"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16057/reactor-cli_v1.20260615.16057_linux-arm64.tar.gz"
      sha256 "4a4291b29fd1a97b49b2b7edbe469e75393bc0b105ad16c38a39d3d7cf30fbb8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260615.16057/reactor-cli_v1.20260615.16057_linux-amd64.tar.gz"
      sha256 "1e73f0374c32b1bc33ab02f7c748379824ca953a759288439bd5945d6fae938d"
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
