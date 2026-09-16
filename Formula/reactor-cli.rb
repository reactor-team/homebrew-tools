# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.26924"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26924/reactor-cli_v1.20260916.26924_darwin-arm64.tar.gz"
      sha256 "da34c764c6efc6900707d16360f2cc26febfb480903f5b24f4e431396babcd6d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26924/reactor-cli_v1.20260916.26924_darwin-amd64.tar.gz"
      sha256 "29be732bf85e8babd8c31083bfc9a0988960d4009a68ff2c90b7acbe626d9673"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26924/reactor-cli_v1.20260916.26924_linux-arm64.tar.gz"
      sha256 "a75f7d771f5ec74a1627dfc9a7dbdeadffb1a2d4133ba2ed40064e7cc47e7f6c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26924/reactor-cli_v1.20260916.26924_linux-amd64.tar.gz"
      sha256 "32fa709f67887344a6d60abc34047f41b652c60c3f292b2037a20f5648ad1f6a"
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
