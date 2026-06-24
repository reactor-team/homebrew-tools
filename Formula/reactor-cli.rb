# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260624.16539"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260624.16539/reactor-cli_v1.20260624.16539_darwin-arm64.tar.gz"
      sha256 "610bb815dddd024287e1485d42c244f97b3bbb597f0bea82d2db313a9b2afde4"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260624.16539/reactor-cli_v1.20260624.16539_darwin-amd64.tar.gz"
      sha256 "538eaa176a00b60e5fe9726520296a5b07287651ed72f62b9b39f5d3034784ac"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260624.16539/reactor-cli_v1.20260624.16539_linux-arm64.tar.gz"
      sha256 "f666e1b7c83ec7acbba7f8a8d651b97fabb03c736e5b532451db880e76399cfe"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260624.16539/reactor-cli_v1.20260624.16539_linux-amd64.tar.gz"
      sha256 "307abd206fa64f1c3a550ac1f5a05033f06719518ce15f052ea70137ba0b3ed9"
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
