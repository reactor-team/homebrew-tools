# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.295"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.295/reactor-cli_v1.20261020.295_darwin-arm64.tar.gz"
      sha256 "8ff1e408913ebd141f90e457f8eae0cb29470a750f3bcc101f5dab2b2a855cff"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.295/reactor-cli_v1.20261020.295_darwin-amd64.tar.gz"
      sha256 "e10c8cf052cc9f3a5f659131bb983c0fdc60ab32fa9b97162af6a336c5be5c94"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.295/reactor-cli_v1.20261020.295_linux-arm64.tar.gz"
      sha256 "80634b7076fbae09f676d9a8a3cde9fd9433ee5d7cacc1f3d952a29654ed50e9"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.295/reactor-cli_v1.20261020.295_linux-amd64.tar.gz"
      sha256 "5ab4a934594fb8b79899318d59bc24a6be17ec2945f2395d0725716c9329705d"
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
