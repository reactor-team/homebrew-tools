# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260715.18420"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260715.18420/reactor-cli_v1.20260715.18420_darwin-arm64.tar.gz"
      sha256 "d81b2d496b075acd61fb14ab60ab4b23f8d94bc6424294007f8ad552df447ca0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260715.18420/reactor-cli_v1.20260715.18420_darwin-amd64.tar.gz"
      sha256 "7a9620052e4ec63dd95be55146471347585937f4fc06ea227643277c2cb4b768"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260715.18420/reactor-cli_v1.20260715.18420_linux-arm64.tar.gz"
      sha256 "f6171e49754687869ae0568f763c2fefafa4c93c422728d53b9ce9aea9834bc4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260715.18420/reactor-cli_v1.20260715.18420_linux-amd64.tar.gz"
      sha256 "07a418c5bafc95b1b4d92084db6da2344a0f8e5c5195d48cbc003dc4431bde67"
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
