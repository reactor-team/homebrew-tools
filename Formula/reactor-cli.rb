# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.47"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.47/reactor-cli_v1.20261024.47_darwin-arm64.tar.gz"
      sha256 "23d2cd6eb3cfded4f59e40e34d00f2084e777c410ac2025d95c7bc6796090e5f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.47/reactor-cli_v1.20261024.47_darwin-amd64.tar.gz"
      sha256 "e3782a14063a4d48f92ca7a5ee220bcb22fe7ede2dff6d620ddee336a8ec611b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.47/reactor-cli_v1.20261024.47_linux-arm64.tar.gz"
      sha256 "850c61d1835115b011c2d2a45eede8cf5e8dbf39a620c688293c771690198286"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.47/reactor-cli_v1.20261024.47_linux-amd64.tar.gz"
      sha256 "23a2e402758bd522afff9b7a3d7ec5d3a472eaff300aa7f5fbcce072b9932307"
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
