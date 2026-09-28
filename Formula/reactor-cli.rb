# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28876"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28876/reactor-cli_v1.20260928.28876_darwin-arm64.tar.gz"
      sha256 "1b82a568f9cdbee26d6c5591c40e119eb62a0484844c1f88922ca81663427025"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28876/reactor-cli_v1.20260928.28876_darwin-amd64.tar.gz"
      sha256 "d5d6eb690ccd9b12503c17392af9b59fd390ceb2fcfe07e8e265ffdee619906e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28876/reactor-cli_v1.20260928.28876_linux-arm64.tar.gz"
      sha256 "56959f6fbe927abd4541c75d78d57fa80ddcfbe5d2e884dda87b7de51376557d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28876/reactor-cli_v1.20260928.28876_linux-amd64.tar.gz"
      sha256 "a788094e3969ced6a714001cfa11456ef6a774a2a094d38534fbec26c5e73a9a"
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
