# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260702.17220"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17220/reactor-cli_v1.20260702.17220_darwin-arm64.tar.gz"
      sha256 "d794936c5243b9126033735661fd36699599af4340db96be897e623dac5e3c22"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17220/reactor-cli_v1.20260702.17220_darwin-amd64.tar.gz"
      sha256 "f9ed58b5b2536fdc68aac9a932809d94a30436207c37f1a7a8ea7d68901888f1"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17220/reactor-cli_v1.20260702.17220_linux-arm64.tar.gz"
      sha256 "27f4fc30b99016d38c30cc31fe7b33f2f66f03181a5dfc960e133783acd8ef51"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260702.17220/reactor-cli_v1.20260702.17220_linux-amd64.tar.gz"
      sha256 "4861732771e576e3adb851805ff7b2b3a1eedc4c5b17ff0b9d26d4e04426a343"
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
