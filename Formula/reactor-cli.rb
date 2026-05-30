# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260530.14656"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14656/reactor-cli_v1.20260530.14656_darwin-arm64.tar.gz"
      sha256 "a44f97881629ce48c7fc3dfc706c67f4347c97beab7b41bed9c8d4967cffd62b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14656/reactor-cli_v1.20260530.14656_darwin-amd64.tar.gz"
      sha256 "540a7e5a035598154611eca70b2d76d0e12fc13cf97e26109a9400dd34673bf7"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14656/reactor-cli_v1.20260530.14656_linux-arm64.tar.gz"
      sha256 "4660ca0606bbd619c27e511c6085034924534d6995b518bacba7515a3be5f248"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260530.14656/reactor-cli_v1.20260530.14656_linux-amd64.tar.gz"
      sha256 "dfad9d2da40eb65aea88b3a38740261adb0e3b0e348e1db636c518615236e2e9"
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
