# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260627.16890"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16890/reactor-cli_v1.20260627.16890_darwin-arm64.tar.gz"
      sha256 "cdb0993d1ca3e9c290d2a3f0222b78daa0eae2886282e6d97db91d9128a3f2ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16890/reactor-cli_v1.20260627.16890_darwin-amd64.tar.gz"
      sha256 "6d807640fcfbe5d05f87eed0e69e7aafa404700c1ba55ca7b9c5985ba4da8933"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16890/reactor-cli_v1.20260627.16890_linux-arm64.tar.gz"
      sha256 "6e0091353c92c255db759682d63b5bbce0454162605c809c1f8d2ffd580f526d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260627.16890/reactor-cli_v1.20260627.16890_linux-amd64.tar.gz"
      sha256 "1741fc01995d31d378088cc8a933922f61254d9a4621b6df8f93de3c87660a4d"
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
