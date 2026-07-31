# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260731.20386"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20386/reactor-cli_v1.20260731.20386_darwin-arm64.tar.gz"
      sha256 "54ee17e710a36d20d5ce6ba7ca0c84ab19249c1f1b6e8f57cde5411c210d6a96"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20386/reactor-cli_v1.20260731.20386_darwin-amd64.tar.gz"
      sha256 "d92ffa013a382005f3c956e081aa9d7c7c69c54d5a718ddfbd35b6a0dd69e6e0"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20386/reactor-cli_v1.20260731.20386_linux-arm64.tar.gz"
      sha256 "02592b9f55154767b1b9947612e34375ae456c636cca2a7670fba70e96a5edb3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260731.20386/reactor-cli_v1.20260731.20386_linux-amd64.tar.gz"
      sha256 "c1ba880f43b1b6df1603dd8aa8a701186892a3cfcd061fdeeb2adc0e6daf6125"
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
