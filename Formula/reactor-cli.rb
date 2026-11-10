# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261110.323"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.323/reactor-cli_v1.20261110.323_darwin-arm64.tar.gz"
      sha256 "67e29fd93ec0030be70b7ef329b66ed04127302f3d18f2e8c9f4d79bc6802341"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.323/reactor-cli_v1.20261110.323_darwin-amd64.tar.gz"
      sha256 "8065056d004045debcec9cc7ab91aabc007d1ca3f55cffb79a8f96f2df03b4b9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.323/reactor-cli_v1.20261110.323_linux-arm64.tar.gz"
      sha256 "e20f868ebfbcd1e7c0c2402fe456a5a40531dcfa59fff9686b5b3e404735b6af"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261110.323/reactor-cli_v1.20261110.323_linux-amd64.tar.gz"
      sha256 "a3f11b7d56b5a215830c31566457931a8f8a8aff1d390e77b370ec6ae48d5928"
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
