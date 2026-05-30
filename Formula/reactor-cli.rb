# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260530.14649"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14649/reactor-cli_v1.20260530.14649_darwin-arm64.tar.gz"
      sha256 "7418374922c134eb97261a7447faccb92dcf567bd8f2290369d8cdd868c18fb1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14649/reactor-cli_v1.20260530.14649_darwin-amd64.tar.gz"
      sha256 "a55832381dd1c904073ac650b19a4514d42d21845185f70fcf9fea3070475934"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14649/reactor-cli_v1.20260530.14649_linux-arm64.tar.gz"
      sha256 "675c735446e56d981306c810b377b2e904f79f371148d37cf9ac3ba2d96c98dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14649/reactor-cli_v1.20260530.14649_linux-amd64.tar.gz"
      sha256 "24c1b931a46e438a9340592fa5ccafcd454fce567a3cf8974242f984d2a0eca2"
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
