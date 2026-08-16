# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260816.21996"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21996/reactor-cli_v1.20260816.21996_darwin-arm64.tar.gz"
      sha256 "1a11257e86bb52349a8311f1e43cef4148f264df747b402b5a133ab1b9398104"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21996/reactor-cli_v1.20260816.21996_darwin-amd64.tar.gz"
      sha256 "1a275490d5c8fc1ffde4208b2afc95f90309f66a4cad912dfc332e29af801eb6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21996/reactor-cli_v1.20260816.21996_linux-arm64.tar.gz"
      sha256 "2ca07493479aa05b4417c51e563f62e11b79b5aee79cadfce76181895e6f2b3a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260816.21996/reactor-cli_v1.20260816.21996_linux-amd64.tar.gz"
      sha256 "5cb00363d9e448a3219f68722bd4e2ba621ce628be0a7c02673f1ed032eeb89d"
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
