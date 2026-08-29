# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260829.23794"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260829.23794/reactor-cli_v1.20260829.23794_darwin-arm64.tar.gz"
      sha256 "83882f82d39a919640268ce896979e24fa076ead4d52356cb9ec686c8d055de9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260829.23794/reactor-cli_v1.20260829.23794_darwin-amd64.tar.gz"
      sha256 "b357d8685b1ad83d165efef757e19322cf217182752732f66ce1c287f2c23406"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260829.23794/reactor-cli_v1.20260829.23794_linux-arm64.tar.gz"
      sha256 "5ebdd26f7d16dff482d856d3eae2bdf6e9891c479320c6b6ab3a401cd07af5f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260829.23794/reactor-cli_v1.20260829.23794_linux-amd64.tar.gz"
      sha256 "42ce4e268b98e6c6a8250513241097ee7f1ea691b59afe7b6f1fcc1b55924dfe"
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
