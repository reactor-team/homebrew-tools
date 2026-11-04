# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.560"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.560/reactor-cli_v1.20261104.560_darwin-arm64.tar.gz"
      sha256 "7eae9310cd4e8cce5a588fc0c407b7ab1f352317c0908c39179cca056feedbd5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.560/reactor-cli_v1.20261104.560_darwin-amd64.tar.gz"
      sha256 "6a25dc9b2f29536cd39d3a45dd36e28deda9e6d9076172bbe4fa73595be66ffa"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.560/reactor-cli_v1.20261104.560_linux-arm64.tar.gz"
      sha256 "a086f853101a1451615739e6a93f83b8fef22ee2f64d173911fb10cc132147e0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.560/reactor-cli_v1.20261104.560_linux-amd64.tar.gz"
      sha256 "537ee2e8d952a5fbb61cbeea0b941e84c367921d82bbcc78a5beefe7583759b4"
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
