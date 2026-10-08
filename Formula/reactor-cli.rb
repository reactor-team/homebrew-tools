# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.26"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.26/reactor-cli_v1.20261008.26_darwin-arm64.tar.gz"
      sha256 "1b1e52d81079451a48fc98ac4621d48545a8f75c517f18f8a7790de5d6ed7bf7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.26/reactor-cli_v1.20261008.26_darwin-amd64.tar.gz"
      sha256 "7c7f9698df88e80e64fcdba9ccb9a41d7a085e2d33dad4a89479ce8d85fac501"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.26/reactor-cli_v1.20261008.26_linux-arm64.tar.gz"
      sha256 "e1f3eb7714ecd5a6946e65cae591dba96cd2aad1ca12011e1addb96a9ab79348"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.26/reactor-cli_v1.20261008.26_linux-amd64.tar.gz"
      sha256 "30c40797c01d14c0283f7acf6cbd6fd66d641784cb2ab71f1822fa52b28568a7"
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
