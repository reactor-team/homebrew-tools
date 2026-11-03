# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261103.168"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.168/reactor-cli_v1.20261103.168_darwin-arm64.tar.gz"
      sha256 "e50e448b73e48678baf65279e9e477da8ac31a8224d6f490df690108d8cdd2b2"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.168/reactor-cli_v1.20261103.168_darwin-amd64.tar.gz"
      sha256 "ed09c09c11a5384f08954849969739d6b431790dd4fac3df404f38fc19a0c98e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.168/reactor-cli_v1.20261103.168_linux-arm64.tar.gz"
      sha256 "7e53672891524d54aca45f90ed18f580a56f1879cd4d98d362f829d5400ecc39"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261103.168/reactor-cli_v1.20261103.168_linux-amd64.tar.gz"
      sha256 "8b9d1a393a3b33377b80a1acfe69a6579b174b0d72d97c09c4579b4567730778"
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
