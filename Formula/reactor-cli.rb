# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260530.14654"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14654/reactor-cli_v1.20260530.14654_darwin-arm64.tar.gz"
      sha256 "e9e90dc47c694df13b313a50e533461a19b3f17b30bfc3543ef1955e1fa844f9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14654/reactor-cli_v1.20260530.14654_darwin-amd64.tar.gz"
      sha256 "62882c04881a0079a02b2dae76b87a494d074e47385b83b43778b746c72944e5"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14654/reactor-cli_v1.20260530.14654_linux-arm64.tar.gz"
      sha256 "22fae541aa3ad2b304b7973becb72afcb135e569aa6cca2a55ff0e98081959cf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14654/reactor-cli_v1.20260530.14654_linux-amd64.tar.gz"
      sha256 "6a1afb388c4edb2bdb40f7a69839da038eb002742c9c939a59822211e9b6e53f"
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
