# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.494"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.494/reactor-cli_v1.20261104.494_darwin-arm64.tar.gz"
      sha256 "0d10682bf6e8f01b012a226690dcea9840abc5d6339328a6d0ad9c8183e46e88"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.494/reactor-cli_v1.20261104.494_darwin-amd64.tar.gz"
      sha256 "22ecd5c431c9d205cf5019975779d9ef1a4326999196130a5e8906230d8bdad8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.494/reactor-cli_v1.20261104.494_linux-arm64.tar.gz"
      sha256 "576557a6845752988f8cd017ef407df6e1d784b99bc1b05ef916f7ddad17ca84"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.494/reactor-cli_v1.20261104.494_linux-amd64.tar.gz"
      sha256 "981ed34ddda24c062a7e691c711337420f9344dda7fb7f7a7791eb75e50a13cf"
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
