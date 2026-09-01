# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260901.24385"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24385/reactor-cli_v1.20260901.24385_darwin-arm64.tar.gz"
      sha256 "bdc8bc296ce61e1c68b2b050dd263f80254e28d2520b25aeef4792a4c541d8f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24385/reactor-cli_v1.20260901.24385_darwin-amd64.tar.gz"
      sha256 "7550b36e5c324eebff1766fbe93a85e96ae095893cfb0ede65841ffaff258476"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24385/reactor-cli_v1.20260901.24385_linux-arm64.tar.gz"
      sha256 "94d201d39537e9e00e6dc46a6a6a939c6d4ab46a84ad5461b3ed9bed157e906f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260901.24385/reactor-cli_v1.20260901.24385_linux-amd64.tar.gz"
      sha256 "68c04994aacbf525443d13036ec89d622225022d54bed68682cf1a9c9f00d61f"
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
