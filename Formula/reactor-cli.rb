# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261019.93"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.93/reactor-cli_v1.20261019.93_darwin-arm64.tar.gz"
      sha256 "10525c9f44895dfd90980d6af8dad3665752cd284b79ee4fe916135ef1031c86"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.93/reactor-cli_v1.20261019.93_darwin-amd64.tar.gz"
      sha256 "0c875c499fbf0aee38501bf21fe5e415a9ca755f1a51d07fbc65e6f40c2cc5b1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.93/reactor-cli_v1.20261019.93_linux-arm64.tar.gz"
      sha256 "592966775a40a9ab2cd67280fc251429670040d651b0f1716f40c7579e209025"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261019.93/reactor-cli_v1.20261019.93_linux-amd64.tar.gz"
      sha256 "1ce14c516e2eaae7ed97df2b9871403afe8e5ec5c76fce343745bb470a53896d"
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
