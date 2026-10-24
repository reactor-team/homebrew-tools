# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261024.15"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.15/reactor-cli_v1.20261024.15_darwin-arm64.tar.gz"
      sha256 "7f742263ba466a66b575e04568a8b40296f69becdabb1eff6aef98e9628d6bc0"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.15/reactor-cli_v1.20261024.15_darwin-amd64.tar.gz"
      sha256 "e1b8fad5ff54966aa82f62a32900f6039c3bd3ac38dc9afd4f542b2deafca45a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.15/reactor-cli_v1.20261024.15_linux-arm64.tar.gz"
      sha256 "611a02bcfdf3b4ce2870dc3169607bbbb236b679cad6c8c79efb44f4989cc390"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261024.15/reactor-cli_v1.20261024.15_linux-amd64.tar.gz"
      sha256 "4f2287d4c38578e5cf3cd38ed04c4b3ae4d5a6ad899fb046c585760a20d1daeb"
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
