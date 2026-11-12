# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.492"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.492/reactor-cli_v1.20261112.492_darwin-arm64.tar.gz"
      sha256 "1155d6ed8fc21f7e0eddd64baf8e1c4b30cb29bf6795170b669f4fd8acad87bf"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.492/reactor-cli_v1.20261112.492_darwin-amd64.tar.gz"
      sha256 "07918af009be76f16ddfb6123178148bd4e7ae5acb8e4439dcc464559e504ca9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.492/reactor-cli_v1.20261112.492_linux-arm64.tar.gz"
      sha256 "3525096005670855526ddeaa5358897e4f394fc77745d76cd079e7dc21793f7f"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.492/reactor-cli_v1.20261112.492_linux-amd64.tar.gz"
      sha256 "765b1648f8fd580860593a29d91b281bf13ed00e849703056d93eede60104ffe"
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
