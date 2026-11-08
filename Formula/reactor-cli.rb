# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261108.140"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.140/reactor-cli_v1.20261108.140_darwin-arm64.tar.gz"
      sha256 "7d83d729838f1d78059b443d297d1dca63c23be1257e6931454eb517c03ed73d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.140/reactor-cli_v1.20261108.140_darwin-amd64.tar.gz"
      sha256 "0ae7c8f69552c2287409f8d20adf350ae77f8f583a869ede471e6bfb355a5b8b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.140/reactor-cli_v1.20261108.140_linux-arm64.tar.gz"
      sha256 "a5731614c7a9b20c017d629e3e30589ea731c6b12fe0088cf08cb31f15a6f6d2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261108.140/reactor-cli_v1.20261108.140_linux-amd64.tar.gz"
      sha256 "366b2f3d12fdaeca8585512882f82977aadb62b6222512a110ceeee5c442af6d"
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
