# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27868"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27868/reactor-cli_v1.20260919.27868_darwin-arm64.tar.gz"
      sha256 "73737eb4df3abcbd1e884a51a350aab4dc4b250e6c6a0d46f4168539320decc2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27868/reactor-cli_v1.20260919.27868_darwin-amd64.tar.gz"
      sha256 "982f717d4d71b421bdb7e50b48c2caa816a477d76064947c11a2b6b946663a6a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27868/reactor-cli_v1.20260919.27868_linux-arm64.tar.gz"
      sha256 "d3aa1e41b4c0fad0376dd1495e88366646b81e3666d72b6f0b975f44b498d720"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27868/reactor-cli_v1.20260919.27868_linux-amd64.tar.gz"
      sha256 "dbb2c4173fe3812b9227e2f34ef628cb7af4ea600295bbff88aa611daa2890dd"
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
