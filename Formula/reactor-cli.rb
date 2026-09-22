# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28201"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28201/reactor-cli_v1.20260922.28201_darwin-arm64.tar.gz"
      sha256 "cf43b2ea9dad6698e7547992fc9a27b56d22419e03a91e1761d9a3874f15a8a9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28201/reactor-cli_v1.20260922.28201_darwin-amd64.tar.gz"
      sha256 "e696539b7028b87dca54cd04ab55875650eabd7ea2a1d089ed1bbf72cd052f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28201/reactor-cli_v1.20260922.28201_linux-arm64.tar.gz"
      sha256 "e1d67a3533a817f59bff0511f225f24788fa896d5cfa1daee8a8cf2afc40e336"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28201/reactor-cli_v1.20260922.28201_linux-amd64.tar.gz"
      sha256 "e427edb97c03eb9441243125e591e5501d1c301b24a40f48f46c83bde6888fbd"
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
