# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28189"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28189/reactor-cli_v1.20260922.28189_darwin-arm64.tar.gz"
      sha256 "ce2784acc91b56279b379a90d033b99c1ab23de20fc31c4ce0344e764a8f629f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28189/reactor-cli_v1.20260922.28189_darwin-amd64.tar.gz"
      sha256 "2994de4b573a2d7392e12319ee75d970d51d2510a2f2db463b03ea1520356f74"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28189/reactor-cli_v1.20260922.28189_linux-arm64.tar.gz"
      sha256 "ade150e61885e1646f4ef903d0156efdf4c3f692966010c7858d99ff4087e721"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28189/reactor-cli_v1.20260922.28189_linux-amd64.tar.gz"
      sha256 "beca56b5429b271f6f2050991d6cb2ee284c8c19b49d9302cd5af5909e2598b1"
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
