# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.115"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.115/reactor-cli_v1.20261112.115_darwin-arm64.tar.gz"
      sha256 "f8ebeb04f70dc3e61a8ae2c438093958aa95f988e9e3bf053c9043f7232e3cbe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.115/reactor-cli_v1.20261112.115_darwin-amd64.tar.gz"
      sha256 "7e2eb061dcfa24bccb8f75295e5057ff6db731f6f7faabc0bf024ecd8ba4075d"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.115/reactor-cli_v1.20261112.115_linux-arm64.tar.gz"
      sha256 "a52671d960854cc024401027b6dce01865bb878cb5625ef9cdcd1f5fba6f5234"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.115/reactor-cli_v1.20261112.115_linux-amd64.tar.gz"
      sha256 "93feb8dcf28816a81fb4cbb63018cc604fa8f86e47b6bf2abba46e0b8292b40e"
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
