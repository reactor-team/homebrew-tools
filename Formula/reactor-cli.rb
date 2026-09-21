# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260921.28139"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28139/reactor-cli_v1.20260921.28139_darwin-arm64.tar.gz"
      sha256 "e4065257cb11874fe4919778984ce6d6b548c5f7dec85488917b3449ab6fc9e8"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28139/reactor-cli_v1.20260921.28139_darwin-amd64.tar.gz"
      sha256 "70a6f8a7d272bf0b706c7d1eb9fd23ad9be7b11d1183b9697b1b0f75dcde4ab1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28139/reactor-cli_v1.20260921.28139_linux-arm64.tar.gz"
      sha256 "629b10a55b05b7de208a7ee4dab2b64c36c36b39eed53c21cf6a2eab1077db16"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260921.28139/reactor-cli_v1.20260921.28139_linux-amd64.tar.gz"
      sha256 "f104a37d2c3031b592b6c12c478b9f0c44d4366c20b9a4f2941254e54244239f"
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
