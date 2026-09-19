# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27840"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27840/reactor-cli_v1.20260919.27840_darwin-arm64.tar.gz"
      sha256 "1aa3752d53df9a23fcb6e2e5c52d2811edf3efc4e935bf623cdb60e65e145a2f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27840/reactor-cli_v1.20260919.27840_darwin-amd64.tar.gz"
      sha256 "4123c9e8aede3e8008eb18dd9265fd892b5b6dbfb6d282748c5556a44f5b08b0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27840/reactor-cli_v1.20260919.27840_linux-arm64.tar.gz"
      sha256 "efbeaf6e3ce4f48240002c390850956659056319845ae3b5b3855d04f6b1642b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27840/reactor-cli_v1.20260919.27840_linux-amd64.tar.gz"
      sha256 "8b0d818a31ef4dfcb6ad703c5a939dd6c25e2f8533c20902210dfbc8f4cc14dd"
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
