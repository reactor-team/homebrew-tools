# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261104.263"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.263/reactor-cli_v1.20261104.263_darwin-arm64.tar.gz"
      sha256 "736465347d25208b3cb14cefa1fee517e056412e261daff88ee0136b00c45cea"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.263/reactor-cli_v1.20261104.263_darwin-amd64.tar.gz"
      sha256 "578765531cb2db3c58f4592aaefdd04e401b25af62961196e30fa9babcd3c682"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.263/reactor-cli_v1.20261104.263_linux-arm64.tar.gz"
      sha256 "80d2ad2390bcbed328a92c16da0ed898ed15907cff7c235701064ef1969af0bd"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261104.263/reactor-cli_v1.20261104.263_linux-amd64.tar.gz"
      sha256 "45c0dce5687098cdf3e3f120cc30b1ef115ff27ef80a270a71761151fd6e6a89"
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
