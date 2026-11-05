# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.114"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.114/reactor-cli_v1.20261105.114_darwin-arm64.tar.gz"
      sha256 "608caaff8dfce8e7bfa4073601f4195335a72596c7528765bf3df42dc674da2e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.114/reactor-cli_v1.20261105.114_darwin-amd64.tar.gz"
      sha256 "3df03f3112d218962060259931b4594faa0192d80058b04df455f2d1de1464ae"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.114/reactor-cli_v1.20261105.114_linux-arm64.tar.gz"
      sha256 "17e1ffff7e7067c1b88728186507c8fd601e6265e63e612a982ff68f6bc1c253"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.114/reactor-cli_v1.20261105.114_linux-amd64.tar.gz"
      sha256 "d8f07722232a3d26994272d9a72c585f93626323f20381e9bb85b305c590dfc0"
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
