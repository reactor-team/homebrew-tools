# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260919.27837"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27837/reactor-cli_v1.20260919.27837_darwin-arm64.tar.gz"
      sha256 "ad7fb8c6cc237f0469c7176eb1877c3cb8df793131dc523aa711e01b4c8c3073"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27837/reactor-cli_v1.20260919.27837_darwin-amd64.tar.gz"
      sha256 "a6f11592a15369a6c824fb271428823654fd3f0d642e720fcc5f437b44bdd964"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27837/reactor-cli_v1.20260919.27837_linux-arm64.tar.gz"
      sha256 "26655ce1b4b9edb8d2191469b605da96c7e9365079478db042b4bb4639799035"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260919.27837/reactor-cli_v1.20260919.27837_linux-amd64.tar.gz"
      sha256 "a747f514a0e5e4bd7519be00e2d4089b0386631cda8bba82ad15c7d7b1422ef6"
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
