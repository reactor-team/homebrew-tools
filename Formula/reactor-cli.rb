# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260811.21475"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21475/reactor-cli_v1.20260811.21475_darwin-arm64.tar.gz"
      sha256 "39ba4eef8d31ba35ed1341dec994c872c63e3fe651d9e2273ae4a11a0cf0614d"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21475/reactor-cli_v1.20260811.21475_darwin-amd64.tar.gz"
      sha256 "5b3160036b5e94d7d93e8cef6e9a06dcb218523ee9a4a9aeb8962249451f553d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21475/reactor-cli_v1.20260811.21475_linux-arm64.tar.gz"
      sha256 "5f8c04b945368f25c73d776bae3e96047ee0c9366a4c564db04646310495d28f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260811.21475/reactor-cli_v1.20260811.21475_linux-amd64.tar.gz"
      sha256 "f4867684bc1ce1aa2504f8858a4e853a7d6f5ff756fbfbe4c8b77ce10c2743fa"
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
