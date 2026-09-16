# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260916.26927"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26927/reactor-cli_v1.20260916.26927_darwin-arm64.tar.gz"
      sha256 "62e7dc62e4df4d4a831780b6865e9355bd66f63cc5af0c814b39de4c07dd3175"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26927/reactor-cli_v1.20260916.26927_darwin-amd64.tar.gz"
      sha256 "3e5435a9a53af3eedd3a4f28fbb2b43cd80035f77a186ecdefcdd7edf7d66baf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26927/reactor-cli_v1.20260916.26927_linux-arm64.tar.gz"
      sha256 "1c02e9986cfa23e7521071b1068c03adcf0448e39bae5c48c84352e6ed7f87e7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260916.26927/reactor-cli_v1.20260916.26927_linux-amd64.tar.gz"
      sha256 "57755ce566ae7cd23fd9827fcd9d184cc4a57d849782d11cc29277ce85b94ab1"
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
