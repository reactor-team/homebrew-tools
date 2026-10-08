# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261008.93"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.93/reactor-cli_v1.20261008.93_darwin-arm64.tar.gz"
      sha256 "9b0209820fd443ce4eb498b0543f523692759e6ee737e98972bcb6fcd5bfe81e"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.93/reactor-cli_v1.20261008.93_darwin-amd64.tar.gz"
      sha256 "9921e0d05b7c0bb3f5ebb4ab30eed8ffdc719fb176c34ca68b4824cdf9171aa7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.93/reactor-cli_v1.20261008.93_linux-arm64.tar.gz"
      sha256 "c4772a7590168a9073c74039b89f3731d0896c79161c119d3cafc04b3ef329c4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261008.93/reactor-cli_v1.20261008.93_linux-amd64.tar.gz"
      sha256 "bd28bcd688b2ac202bdef389eef3045e937ecb47570f231f590258285df3bdbc"
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
