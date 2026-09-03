# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260903.24711"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24711/reactor-cli_v1.20260903.24711_darwin-arm64.tar.gz"
      sha256 "4bef1ba69e8bd4dc0b01f7d455fa3512a4dc15961db980d07d358f165a1972cb"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24711/reactor-cli_v1.20260903.24711_darwin-amd64.tar.gz"
      sha256 "2339c7dd4c09dfab2f7fcb0088aa3ec781eb146bdbe1eb4a70a1da0645bfaaac"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24711/reactor-cli_v1.20260903.24711_linux-arm64.tar.gz"
      sha256 "783f8ae19957ef275e85b8f91f8eb6839019015e1eedf8109927864547b8dab9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260903.24711/reactor-cli_v1.20260903.24711_linux-amd64.tar.gz"
      sha256 "9c9ac15c492ce884ae830b2eb72514adf603ba2caf3c03df1f685b9e0b868110"
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
