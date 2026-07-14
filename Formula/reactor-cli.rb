# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260714.18312"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260714.18312/reactor-cli_v1.20260714.18312_darwin-arm64.tar.gz"
      sha256 "9f3348ceb3bc9d01f966c72b49b591208e9b8838c5a4f81b4dad9cc3d9b0f811"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260714.18312/reactor-cli_v1.20260714.18312_darwin-amd64.tar.gz"
      sha256 "b340746355ae1708fb54cc61b290e2c2a92edc9ba782695698891f0fbe1a11b3"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260714.18312/reactor-cli_v1.20260714.18312_linux-arm64.tar.gz"
      sha256 "42aef5d572752f28da2498b2e91dffbc3fd29cbcb2a1cb6d7cd7944bbb334732"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260714.18312/reactor-cli_v1.20260714.18312_linux-amd64.tar.gz"
      sha256 "54856c02310adaba718ba5c8ec7fda5fde378409960f2d3fa646d1af557f6b0d"
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
