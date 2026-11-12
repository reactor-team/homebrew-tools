# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.96"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.96/reactor-cli_v1.20261112.96_darwin-arm64.tar.gz"
      sha256 "fce1edbff5d4edefba6b86e1710a162104bfd085c4e670c3027c79f2bea960f5"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.96/reactor-cli_v1.20261112.96_darwin-amd64.tar.gz"
      sha256 "84185ba76435b7107dfcfc0baa54546a770240824240bc76d1f893f17dbba1a9"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.96/reactor-cli_v1.20261112.96_linux-arm64.tar.gz"
      sha256 "e0539ce2ad794c4519d69d20aebf63997611bc8e71734cbb3f6fbc5654435e00"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.96/reactor-cli_v1.20261112.96_linux-amd64.tar.gz"
      sha256 "60cb6ab049c58bedd8d919b20bc9dcb57a925da06444c25c26b189f460c0ecd5"
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
