# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261009.84"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.84/reactor-cli_v1.20261009.84_darwin-arm64.tar.gz"
      sha256 "b78e79a66ef567974a4f8547aaacb9877bd7f1e7bb6531d3681f4b1445c55069"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.84/reactor-cli_v1.20261009.84_darwin-amd64.tar.gz"
      sha256 "28a2b4a79bae103b9fae5590bac9757ffe0097931fcb11b02a781574db2b3c8b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.84/reactor-cli_v1.20261009.84_linux-arm64.tar.gz"
      sha256 "48b8c9bc51d3d623b04b384f67ec2e60b8b70274f0b286a8fd26dbb88ed24b28"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261009.84/reactor-cli_v1.20261009.84_linux-amd64.tar.gz"
      sha256 "56be45210d404e3b484b500f9805fec55b5042bd64205af3a1775f693edf3fff"
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
