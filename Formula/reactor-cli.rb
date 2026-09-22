# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260922.28173"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28173/reactor-cli_v1.20260922.28173_darwin-arm64.tar.gz"
      sha256 "8edd72aa8b941d4fafb61dae7b86dae2dd3ab29bf97059f1d6d57a53e7a24098"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28173/reactor-cli_v1.20260922.28173_darwin-amd64.tar.gz"
      sha256 "36e2da47fe186d03dc346adf8f7620bcadbc1bf0f50d958deaa20930954dc7dd"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28173/reactor-cli_v1.20260922.28173_linux-arm64.tar.gz"
      sha256 "baf61457e327af42d2e8492803490583d43ceef596fe1cf039e0f9edcc2968f6"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260922.28173/reactor-cli_v1.20260922.28173_linux-amd64.tar.gz"
      sha256 "42d5e6fd991e2aef253d3db8477f9f812473ac9cf184ec6db3a2f878bbf5a6c9"
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
