# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260731.20374"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20374/reactor-cli_v1.20260731.20374_darwin-arm64.tar.gz"
      sha256 "cf9bc1e9d3688cb3a3601f71d117b6723f3cb1d98c28f90d3c9102e381ffe118"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20374/reactor-cli_v1.20260731.20374_darwin-amd64.tar.gz"
      sha256 "5cc2963342793eeb13eb32fceb4429bea76ba477a04e517caf750ae8559cd473"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20374/reactor-cli_v1.20260731.20374_linux-arm64.tar.gz"
      sha256 "d79ae1e1b61cbfcab5c22dfb79ba1ec6c2081ad0f679174bdbd2b1fc468f92d6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20374/reactor-cli_v1.20260731.20374_linux-amd64.tar.gz"
      sha256 "33e67d8e55277e1e3832bc58d1d44c9c241037ef711ad163107960d4f3b4d212"
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
