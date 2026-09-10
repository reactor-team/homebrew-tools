# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260910.25707"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25707/reactor-cli_v1.20260910.25707_darwin-arm64.tar.gz"
      sha256 "fdff4c94f9ec39d98b4e76045d58b95fefb803354fee48f5d4e5e665f85a6887"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25707/reactor-cli_v1.20260910.25707_darwin-amd64.tar.gz"
      sha256 "806986ed561ef814c24c0a5bc1e715aeb2a0889bddd83d2eceb08f09d2a10dc2"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25707/reactor-cli_v1.20260910.25707_linux-arm64.tar.gz"
      sha256 "889ffed1c1bfd25340a79a1de993f230dd3055642ab524328f6eab7003186474"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260910.25707/reactor-cli_v1.20260910.25707_linux-amd64.tar.gz"
      sha256 "907b8edf433e020e536daa5dda3f0e8f84bf4056bbd7ef4083ec3bae408b3443"
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
