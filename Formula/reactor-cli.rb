# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260904.24957"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24957/reactor-cli_v1.20260904.24957_darwin-arm64.tar.gz"
      sha256 "7771b63393ebd939b087a3ce7a70864f66f9a08ec396b706710e9aeafa63c0fe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24957/reactor-cli_v1.20260904.24957_darwin-amd64.tar.gz"
      sha256 "6d7130a22f134d3ed3993959a191a6352aff0bb26abfb1432d36dd464a285603"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24957/reactor-cli_v1.20260904.24957_linux-arm64.tar.gz"
      sha256 "ed37b5c2f325e7e0004fb7a7e2b43fc19093ab0e0d0f79c68b3f328a0bc61f6a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260904.24957/reactor-cli_v1.20260904.24957_linux-amd64.tar.gz"
      sha256 "cc9fc6964dd495b45c04e94ed4a15c70ba082627fd62d8917214f4d503288d28"
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
