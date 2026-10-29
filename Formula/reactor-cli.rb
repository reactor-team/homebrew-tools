# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.174"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.174/reactor-cli_v1.20261029.174_darwin-arm64.tar.gz"
      sha256 "4a16ec124c4fc9e6b77fe6dc38ed8025f07e0755066f85210a4cba4e1b5397d9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.174/reactor-cli_v1.20261029.174_darwin-amd64.tar.gz"
      sha256 "a4049c6285b2a4b4da5d0ee471a5e5ca4e994a0b52a2099e7c6d2553408f210e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.174/reactor-cli_v1.20261029.174_linux-arm64.tar.gz"
      sha256 "278f940becbc703bb146d93f2813c747732542dc9cda6f9645ff593d5fb2574f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.174/reactor-cli_v1.20261029.174_linux-amd64.tar.gz"
      sha256 "5c8a827a0b7040a228dcf301ef2410003351efd92dd7eb721970639855e92e95"
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
