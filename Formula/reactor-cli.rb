# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260924.28456"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28456/reactor-cli_v1.20260924.28456_darwin-arm64.tar.gz"
      sha256 "4adb31100de95f882f38cadd80ed14fa90184eb8997c3ff9014429be0788648e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28456/reactor-cli_v1.20260924.28456_darwin-amd64.tar.gz"
      sha256 "35513dc20d228927a2c1c5d1b22e68986ac8271f599b0980ec8c6675765245d2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28456/reactor-cli_v1.20260924.28456_linux-arm64.tar.gz"
      sha256 "306ab15e736ee8413af08a97abec23521624892b2784eb21996ac31f50f8ecf3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260924.28456/reactor-cli_v1.20260924.28456_linux-amd64.tar.gz"
      sha256 "f5ad7621ced16b9d0147c491f3d5f54b0f4fc3c8dc44e702214c3a739d99ad8a"
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
