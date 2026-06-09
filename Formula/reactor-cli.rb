# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260609.15542"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15542/reactor-cli_v1.20260609.15542_darwin-arm64.tar.gz"
      sha256 "579b873815411ce03181caa1dd645776e9284d1bd3ce9db1e96cfb9fed9342c7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15542/reactor-cli_v1.20260609.15542_darwin-amd64.tar.gz"
      sha256 "f4f5adf55d333ac59d4cd26cc3b898a2a219764d0fffb52289b39d77eadffcc2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15542/reactor-cli_v1.20260609.15542_linux-arm64.tar.gz"
      sha256 "3b2c6a216c5213cbe4db18c8ff3bfddab79824ffa3609c5e7b01f81e87597c07"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260609.15542/reactor-cli_v1.20260609.15542_linux-amd64.tar.gz"
      sha256 "4d92acc48049c1177fcd994d238d90d09d919e7fa8610f472d2d4e651dcdd4ca"
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
