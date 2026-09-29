# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260929.194"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.194/reactor-cli_v1.20260929.194_darwin-arm64.tar.gz"
      sha256 "3c74439d062f63d80416417070ea4171dc673035ddc0b9aff62220251004cfa0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.194/reactor-cli_v1.20260929.194_darwin-amd64.tar.gz"
      sha256 "de40540d42841f1bd8a664273b0c48e74f9622ee637d73be8b3beffcca5f6360"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.194/reactor-cli_v1.20260929.194_linux-arm64.tar.gz"
      sha256 "66cf964caa3e09f0f0f913cddfd0bb7859b6ee9b101d30e5cc96dcfdcc985502"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260929.194/reactor-cli_v1.20260929.194_linux-amd64.tar.gz"
      sha256 "363c210f9b1f962b96cf56f86a374fdab27901b85e23ab2fef7d91645f277d7d"
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
