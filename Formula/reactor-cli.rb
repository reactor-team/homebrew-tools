# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260908.25401"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25401/reactor-cli_v1.20260908.25401_darwin-arm64.tar.gz"
      sha256 "dafa25bdf953b61d01658ca739a64ac989254796f3e857b62cf63a7416c1348b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25401/reactor-cli_v1.20260908.25401_darwin-amd64.tar.gz"
      sha256 "c579f5a8f13f07fcf8e352b97ded546aa043caec3265cc5cd54ef0a392e5c64d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25401/reactor-cli_v1.20260908.25401_linux-arm64.tar.gz"
      sha256 "5a36e80a25c0cafd2c704820ca9105d5fec8c72c36201858e53a418a3fc380c7"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260908.25401/reactor-cli_v1.20260908.25401_linux-amd64.tar.gz"
      sha256 "9bbf119844b34ed32759f64f991bf2316aa053126e5a7033e7608b20b5f4a0f0"
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
