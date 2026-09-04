# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.24916"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24916/reactor-cli_v1.20260904.24916_darwin-arm64.tar.gz"
      sha256 "79fda992c6ebb8d090f6e904209ab1b5c53283365e5c1a0d99d184884f7e2175"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24916/reactor-cli_v1.20260904.24916_darwin-amd64.tar.gz"
      sha256 "3be39e840f0f921fb336a55a7bc59dc25c1163a75633fb9b6113d75b78cd6a45"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24916/reactor-cli_v1.20260904.24916_linux-arm64.tar.gz"
      sha256 "bf746b9bc99d8429036d2e994872602842252ad65a70fdbd607eb63c8bef0fd5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24916/reactor-cli_v1.20260904.24916_linux-amd64.tar.gz"
      sha256 "a4f0c7278dac0645f22d63c891efdbd0f08b04bc519e3ae118685271a7cc5e00"
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
