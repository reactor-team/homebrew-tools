# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.137"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.137/reactor-cli_v1.20261008.137_darwin-arm64.tar.gz"
      sha256 "39a402f5ec7e31c3113cf150b356041268b43d1f1970642dd20187518d792039"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.137/reactor-cli_v1.20261008.137_darwin-amd64.tar.gz"
      sha256 "f6006f1a448d8e5ab4e914a72f227399cc1e3aabefbe76a85fa75cb501b55b0b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.137/reactor-cli_v1.20261008.137_linux-arm64.tar.gz"
      sha256 "65065cd11cc53537cba8ba3bd793a11a6d653b36e6bc85b17c519cc8de1a4599"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.137/reactor-cli_v1.20261008.137_linux-amd64.tar.gz"
      sha256 "260feb56614a09f2476caf8702cdce4873ffed87048ba40a042de98a7d23c09f"
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
