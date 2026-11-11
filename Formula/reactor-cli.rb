# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261111.364"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.364/reactor-cli_v1.20261111.364_darwin-arm64.tar.gz"
      sha256 "efadcd9d313ab5c8f97fe442ce5cd627e8a57aea4f934433a4063996314dd0dd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.364/reactor-cli_v1.20261111.364_darwin-amd64.tar.gz"
      sha256 "edb2579414cd672127d28ea1635b262f04cbcbea36fd5dee6f5c15ca666b91be"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.364/reactor-cli_v1.20261111.364_linux-arm64.tar.gz"
      sha256 "f87ae59401a86e9a14a4cae4f4696c16307672fe61884f307e153ba5bc4edd1b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261111.364/reactor-cli_v1.20261111.364_linux-amd64.tar.gz"
      sha256 "480c45a6ee57410251a5e61f10fd2eb870e94d52e2d03d33eff01897ad156ef6"
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
