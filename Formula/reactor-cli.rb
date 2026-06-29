# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260629.16973"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16973/reactor-cli_v1.20260629.16973_darwin-arm64.tar.gz"
      sha256 "2d576d2c1c44fadceb7713a35935a9d95673363ead3b984af8f79eaba5b1c661"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16973/reactor-cli_v1.20260629.16973_darwin-amd64.tar.gz"
      sha256 "1a77c7dec0ffe809c6ef3c42f58d76abdac645bf635a15cb10c282610ff7d8c4"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16973/reactor-cli_v1.20260629.16973_linux-arm64.tar.gz"
      sha256 "d946bd4c0a1421390c49ed07388efa7a0ad1af45b8ba0d8e833755928db73c6a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260629.16973/reactor-cli_v1.20260629.16973_linux-amd64.tar.gz"
      sha256 "b90472f90eecb330b4687d619f8e53699dfa80c1a917a5bbab5f973f8be3e76c"
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
