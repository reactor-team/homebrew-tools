# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260910.25709"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25709/reactor-cli_v1.20260910.25709_darwin-arm64.tar.gz"
      sha256 "9b52d4fca9f58527c9e527ac8c378311e857115fa8315fee4a96d641b19c6cc5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25709/reactor-cli_v1.20260910.25709_darwin-amd64.tar.gz"
      sha256 "7760d85b89f9102f436eeb8622b5b50258c903ae3680bc9f4a56e35ea0e1c337"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25709/reactor-cli_v1.20260910.25709_linux-arm64.tar.gz"
      sha256 "d211364ab6e78d41c8c09b694f252a9e0168aa239193925b8faf1c8a35345369"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25709/reactor-cli_v1.20260910.25709_linux-amd64.tar.gz"
      sha256 "7431d8f31a448ec7e15d3e4a2373d36c478a3a29c1b13a47c7bc2dda6a847bf0"
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
