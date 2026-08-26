# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260826.23247"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23247/reactor-cli_v1.20260826.23247_darwin-arm64.tar.gz"
      sha256 "b06953202edfd0bcda70cfb33bd9bd5b303c0833fd11af1f117eac73af889787"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23247/reactor-cli_v1.20260826.23247_darwin-amd64.tar.gz"
      sha256 "0d239c8be8e035552abbb780b975606b02ff8f529f4e0eef8fce818eddc75607"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23247/reactor-cli_v1.20260826.23247_linux-arm64.tar.gz"
      sha256 "55651fa3367192b7091ca2d83e490bfb51a776704b0ae7fbaf3f20f88dfa81f2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260826.23247/reactor-cli_v1.20260826.23247_linux-amd64.tar.gz"
      sha256 "82fd5b737fe801a186b76953f2a886b63b5ebd29ea042ca357a7075c6632a9f2"
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
