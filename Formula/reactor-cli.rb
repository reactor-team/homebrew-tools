# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260727.19692"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19692/reactor-cli_v1.20260727.19692_darwin-arm64.tar.gz"
      sha256 "bb543e3d177d654891485a556848181494cfa5ca7c8c130114fce44acc778554"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19692/reactor-cli_v1.20260727.19692_darwin-amd64.tar.gz"
      sha256 "8a4ee1592b20c8eb8b07ba2fadd1fe441e0e4f3bb0b66608bfd0738b7e0a3b5f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19692/reactor-cli_v1.20260727.19692_linux-arm64.tar.gz"
      sha256 "dbed9cacc1ff244e99316946f188ce1c4f05ce7546b6e53da0aae3277146963e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260727.19692/reactor-cli_v1.20260727.19692_linux-amd64.tar.gz"
      sha256 "4e3661833f65ad955b7be8516dbe64d493606a139e9aaaa4c50050208fd04fe2"
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
