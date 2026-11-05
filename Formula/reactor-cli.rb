# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261105.430"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.430/reactor-cli_v1.20261105.430_darwin-arm64.tar.gz"
      sha256 "a3153e826a44ae26e77c4448961826db9ba328ed20a79773957ae824d69cd5d1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.430/reactor-cli_v1.20261105.430_darwin-amd64.tar.gz"
      sha256 "86ac914a55f8c7cadb0f2caaff9965dbd9288acf5d5d1b31264dfa97473292c2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.430/reactor-cli_v1.20261105.430_linux-arm64.tar.gz"
      sha256 "c17e899c07f6abe7511ee66fdda69be1e2887d417c5994d0e22d95914592d9c3"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261105.430/reactor-cli_v1.20261105.430_linux-amd64.tar.gz"
      sha256 "4fdbd112ab244cbe557e950f54eea7d90b6f51bd36e2ba54b84c406b2d9f466c"
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
