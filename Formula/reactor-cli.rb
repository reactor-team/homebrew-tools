# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28242"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28242/reactor-cli_v1.20260922.28242_darwin-arm64.tar.gz"
      sha256 "d4316e16d6578228b83d80a5744e4e59bf8d688d2791f2809244d4ab63aa2b01"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28242/reactor-cli_v1.20260922.28242_darwin-amd64.tar.gz"
      sha256 "bfc0e9a5ae97f2e9601ceed909d727b13beb892bcdd8a331aceb408c70861f50"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28242/reactor-cli_v1.20260922.28242_linux-arm64.tar.gz"
      sha256 "daab5d5610bddf059e5bb5dd1208722a7998e1967ff4dc3256f42268739db72b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28242/reactor-cli_v1.20260922.28242_linux-amd64.tar.gz"
      sha256 "f88e0e13bd924f5d3244a54e400cbde9077f694cdc34769d12e7576d1d1e7a2b"
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
