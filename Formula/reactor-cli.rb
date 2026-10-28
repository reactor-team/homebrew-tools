# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261028.80"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.80/reactor-cli_v1.20261028.80_darwin-arm64.tar.gz"
      sha256 "2244cba8e31a93bfd9eb7f8c28908f09bf6ef4363127bfd7738a1242ee80be05"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.80/reactor-cli_v1.20261028.80_darwin-amd64.tar.gz"
      sha256 "1f2719582e548526ceaeae142d48427ad7bf76afbde217705db52108f9d19e6c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.80/reactor-cli_v1.20261028.80_linux-arm64.tar.gz"
      sha256 "36b0dfbc266bba2ab385b0e13a206e17f43210aedf10c1779030a7e5432e7d3f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261028.80/reactor-cli_v1.20261028.80_linux-amd64.tar.gz"
      sha256 "da4c76b0051ae8ae1770f0c595687c7cbcf88c767d8cdeea5a1a9b5c4892432a"
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
