# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16837"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16837/reactor-cli_v1.20260627.16837_darwin-arm64.tar.gz"
      sha256 "02d582165cfdab6f1d8cfe8e22bc3dbab3e2b5be3d9dd2466a0ceb0fbea3da15"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16837/reactor-cli_v1.20260627.16837_darwin-amd64.tar.gz"
      sha256 "fbc4144f6281ae5ba1dac38c46cb0ddc171a2507f1a4018b1fae5930ba194c33"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16837/reactor-cli_v1.20260627.16837_linux-arm64.tar.gz"
      sha256 "838a0dc193f6f42b44cf2a07726a9b4a87aa56b925e67f5c9b6e8d9ad249fd2e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16837/reactor-cli_v1.20260627.16837_linux-amd64.tar.gz"
      sha256 "c76971ca4631d2d6f28e83a1aab8f316aa0879b81b963d7bdf99f1c05f34a276"
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
