# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260928.28856"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28856/reactor-cli_v1.20260928.28856_darwin-arm64.tar.gz"
      sha256 "3c88370e3726a1b89424eb0d7ef649f4732a3096bf1b3404948a11fd831dbccc"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28856/reactor-cli_v1.20260928.28856_darwin-amd64.tar.gz"
      sha256 "79cd0e99555db186a4fea60563b3dbc8d5f08e183f148f067c1145325344f615"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28856/reactor-cli_v1.20260928.28856_linux-arm64.tar.gz"
      sha256 "6c477b940b7b7ea7d8965f43907ccd612fbc6dd3e0e3e7d8e5742fc67e56b365"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260928.28856/reactor-cli_v1.20260928.28856_linux-amd64.tar.gz"
      sha256 "72a29a5d02fe24b4e7e20813300fb623864a7c3f616aea56471413293fb988b7"
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
