# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.68"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.68/reactor-cli_v1.20261020.68_darwin-arm64.tar.gz"
      sha256 "ca69e088e6b76f7fff81e665212104dfd3cbf910085e48060050bac39873874e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.68/reactor-cli_v1.20261020.68_darwin-amd64.tar.gz"
      sha256 "f10e100bd17232541a12c20b0786c938349f432c871793fdbbfbca2c6a10cdbf"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.68/reactor-cli_v1.20261020.68_linux-arm64.tar.gz"
      sha256 "7c69b043ef567d852128b66c2d3c9a5b0c8907ff979299628d51f5cd492556a4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.68/reactor-cli_v1.20261020.68_linux-amd64.tar.gz"
      sha256 "a9a02e0e00a9641d223f906493d342b7b74838c70e4675d6f2bff9f779830a02"
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
