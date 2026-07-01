# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260701.17079"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17079/reactor-cli_v1.20260701.17079_darwin-arm64.tar.gz"
      sha256 "a85efaca227c94e37ba5bb6a50b7b7afccc8595b444b4b8e9076f1a9cd74f5b4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17079/reactor-cli_v1.20260701.17079_darwin-amd64.tar.gz"
      sha256 "21b61d0d651f0b13ab9310ad1e593d853505af0130f1abe1aba801a2762aaa66"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17079/reactor-cli_v1.20260701.17079_linux-arm64.tar.gz"
      sha256 "2fd32b50f2b5c385cd5f58f97aa464d01d02afd747a4556002c1c8321db9bf97"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260701.17079/reactor-cli_v1.20260701.17079_linux-amd64.tar.gz"
      sha256 "e6aa7f9122fb4bec61a370f1ec7670b3f07ff7ffa120ab8aad09a9dfc9147a4e"
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
