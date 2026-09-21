# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260921.28090"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28090/reactor-cli_v1.20260921.28090_darwin-arm64.tar.gz"
      sha256 "a519f5c7dd10ccd4b37f8faf9778a7c99b1070b1e50ff67a346fd402cd301fa1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28090/reactor-cli_v1.20260921.28090_darwin-amd64.tar.gz"
      sha256 "381b840ca97e55e7f4cab5e4a4511437bf538590522e0e4a54335ebf6d440398"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28090/reactor-cli_v1.20260921.28090_linux-arm64.tar.gz"
      sha256 "97d508168130cbe7b5191f3bd7d424a2e5a55ae4c0be2b0d17a3d36696263c8b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28090/reactor-cli_v1.20260921.28090_linux-amd64.tar.gz"
      sha256 "228d015e9ffb8009c661243f70a7ef4bb5a6e82229e09a93df0d3024665714fa"
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
