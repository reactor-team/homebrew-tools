# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260611.15768"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15768/reactor-cli_v1.20260611.15768_darwin-arm64.tar.gz"
      sha256 "0d440e8abbc2ad77f798394d73a04752a0cb5ac2ef0d4bf1d847233104af61a9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15768/reactor-cli_v1.20260611.15768_darwin-amd64.tar.gz"
      sha256 "8f7d45c787ac70af58129e4f5bd4e5845882e7a4e909d2e621e72bdbbaf447e2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15768/reactor-cli_v1.20260611.15768_linux-arm64.tar.gz"
      sha256 "04f861dd4dbfe2f8ecafc65eda599bb143582b63f20fb36e35c55cad3835a2f6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260611.15768/reactor-cli_v1.20260611.15768_linux-amd64.tar.gz"
      sha256 "859e98133f807ba4731eebac18480bb00a3fb3664735538273a2638b92681829"
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
