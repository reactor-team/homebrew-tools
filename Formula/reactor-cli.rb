# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.210"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.210/reactor-cli_v1.20261112.210_darwin-arm64.tar.gz"
      sha256 "bf1903c4f09b82d82f8109998d5185a9c11da9588a01b59216dcb8150fcd3a2e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.210/reactor-cli_v1.20261112.210_darwin-amd64.tar.gz"
      sha256 "77ffce99a3936b38eef43883bffa1c83f1c4354142a1923510331641d51ddc0c"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.210/reactor-cli_v1.20261112.210_linux-arm64.tar.gz"
      sha256 "e7b3d0754d4a2244ee12acb7136c8508927edffedccc981f8b25d76488a0ffcf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.210/reactor-cli_v1.20261112.210_linux-amd64.tar.gz"
      sha256 "7023378f39069aa1f7deb62698afb1f934dc77f0b6eb3b4bff01c8c0948f5251"
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
