# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260911.25849"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260911.25849/reactor-cli_v1.20260911.25849_darwin-arm64.tar.gz"
      sha256 "d2289a96b3fffb218dcf841176159a33b5c2d234c1e82433d63d367434e2d2de"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260911.25849/reactor-cli_v1.20260911.25849_darwin-amd64.tar.gz"
      sha256 "142188680e2c0ea2dca28e2111c71cc2d356375bbd316b0c7faf412f96962262"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260911.25849/reactor-cli_v1.20260911.25849_linux-arm64.tar.gz"
      sha256 "1c929c7daba2ea68f0203c223156d3cd1f37d9778065b803584f013f7b644854"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260911.25849/reactor-cli_v1.20260911.25849_linux-amd64.tar.gz"
      sha256 "622419b69813eac3ed919c5d1c107d11de663bccaf28b396cdd363a68d79e9f1"
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
