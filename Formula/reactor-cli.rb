# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260616.16143"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16143/reactor-cli_v1.20260616.16143_darwin-arm64.tar.gz"
      sha256 "705352cdfac8801977673f41b3a5dacb7b648f4422ca09d16b1c28b6471e6db9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16143/reactor-cli_v1.20260616.16143_darwin-amd64.tar.gz"
      sha256 "2fb4024d609e509b9112f2c178fa0f431b02c1f7b14e01e4a4e96b81194dcf5c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16143/reactor-cli_v1.20260616.16143_linux-arm64.tar.gz"
      sha256 "6e9964aae13b055f127cf8f130a2b1310f60b4ef4e248323693fff2a24165b86"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260616.16143/reactor-cli_v1.20260616.16143_linux-amd64.tar.gz"
      sha256 "8686f06a0c70f40dfabeead43bdb6b2df30bee757ef60d3a900d55671c3e1e79"
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
