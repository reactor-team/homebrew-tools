# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.25040"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25040/reactor-cli_v1.20260904.25040_darwin-arm64.tar.gz"
      sha256 "02ed2b56c20938fee8b5e2e6e3688114f392771755a830914256abbf476c48ff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25040/reactor-cli_v1.20260904.25040_darwin-amd64.tar.gz"
      sha256 "e05969df4282501f65bd37ea5746e518c0bf2a571aa03ea7b09b1b34897e7e2d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25040/reactor-cli_v1.20260904.25040_linux-arm64.tar.gz"
      sha256 "8182d4d6484489bd1470ba06bbcba0e85ab50d7f28164f7f0fd7b1d49f184993"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25040/reactor-cli_v1.20260904.25040_linux-amd64.tar.gz"
      sha256 "db01683d2705024fb8fa3853866b5275d397052b76f5e6cbbe4e5e39431d5979"
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
