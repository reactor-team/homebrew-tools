# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261109.205"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.205/reactor-cli_v1.20261109.205_darwin-arm64.tar.gz"
      sha256 "3e892c24cc65c10eb4f874afe4d4271716602e742d4c54ff75095da211bf044d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.205/reactor-cli_v1.20261109.205_darwin-amd64.tar.gz"
      sha256 "dc60f490604744e7eccfc867cd7e8871360a290d449eee605b088ace38171a6b"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.205/reactor-cli_v1.20261109.205_linux-arm64.tar.gz"
      sha256 "724fb218b7d6ef492ee0a144bc0449f26a2ca1ee9fdf71e73714eb68bae6b855"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261109.205/reactor-cli_v1.20261109.205_linux-amd64.tar.gz"
      sha256 "35ca427fc499b74d533ae59d7416512a4b851e412625e2f81df2e65f38559420"
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
