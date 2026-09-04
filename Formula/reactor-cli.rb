# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.25031"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25031/reactor-cli_v1.20260904.25031_darwin-arm64.tar.gz"
      sha256 "b76b8f4e640c2c293dba217935e7069cd1bdec323f941a7868de42ec3c2a4951"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25031/reactor-cli_v1.20260904.25031_darwin-amd64.tar.gz"
      sha256 "27e4b83532e52ce358dd64701494676b174e8d1bc3f6f2f665e22f313e17121e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25031/reactor-cli_v1.20260904.25031_linux-arm64.tar.gz"
      sha256 "f6c589232998e6f21707dbd214d9524df3922ac79b1b7f485d3a9cb8b6aa1170"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.25031/reactor-cli_v1.20260904.25031_linux-amd64.tar.gz"
      sha256 "9bc2226fb85404cab7c5cc0719f4a57ffbbff5b4671d71bb68614a9ea95212f5"
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
