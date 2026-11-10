# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.665"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.665/reactor-cli_v1.20261109.665_darwin-arm64.tar.gz"
      sha256 "4af808f49262efbe204ecfd0074029d0a6817ee5f6e61c91dbb11070c571df13"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.665/reactor-cli_v1.20261109.665_darwin-amd64.tar.gz"
      sha256 "8df7376c4551492c088949b53aabbfec1aacf77cd1884b7e94c0eb876ba8447d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.665/reactor-cli_v1.20261109.665_linux-arm64.tar.gz"
      sha256 "c1f5bec22f0e53aed543a192bb14e85f9e487e6c9bc38c823012b2f05e2687c0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.665/reactor-cli_v1.20261109.665_linux-amd64.tar.gz"
      sha256 "dd4a11f91a323af766171e5ba15d957d1d2add42d74f9d0f3216c9f4fe9d5649"
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
