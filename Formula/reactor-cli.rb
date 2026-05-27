# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260527.14538"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260527.14538/reactor-cli_v1.20260527.14538_darwin-arm64.tar.gz"
      sha256 "9f2fbf8414f56ea1110ee7d2be65e389dd40d015d1e14184081cd71fa790c12c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260527.14538/reactor-cli_v1.20260527.14538_darwin-amd64.tar.gz"
      sha256 "8043dc23b5b8558e14de6844c41dc00712868407e048ee008c2bcdfb3333b81d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260527.14538/reactor-cli_v1.20260527.14538_linux-arm64.tar.gz"
      sha256 "957398f192f964805cdd33f70860203eb4235f2985e6de607078bc70fea2fde1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260527.14538/reactor-cli_v1.20260527.14538_linux-amd64.tar.gz"
      sha256 "fdba064894d26d030da86b74facce7629d230bd714b60b8e235ea145eb6161ed"
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
