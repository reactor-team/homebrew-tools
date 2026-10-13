# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261013.456"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.456/reactor-cli_v1.20261013.456_darwin-arm64.tar.gz"
      sha256 "aaaaec41f8f3af4f2c1e238da09c40f86c3eabb9723f349b2bfde5946e2c021d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.456/reactor-cli_v1.20261013.456_darwin-amd64.tar.gz"
      sha256 "8a47c0656739ca46dc825754f0290f72e839f8d73141f3ecbc8f72cec26b4e6d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.456/reactor-cli_v1.20261013.456_linux-arm64.tar.gz"
      sha256 "61e1a1ecd5d601cd0890675e2d6b09713a82f0d6a3b8d27831ca7df14dcde484"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261013.456/reactor-cli_v1.20261013.456_linux-amd64.tar.gz"
      sha256 "f8a6b278e9d7a325306848f590f91e567e2205ae39f14adc058027273b2db514"
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
