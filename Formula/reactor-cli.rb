# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "20260428-2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/20260428-2/reactor-cli_20260428-2_darwin-arm64.tar.gz"
      sha256 "6fe6d8d33062246d058659d21174e93e639b4e8c11fd2f885cf8c5aabad5d76c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/20260428-2/reactor-cli_20260428-2_darwin-amd64.tar.gz"
      sha256 "787f0bac680b490cc140f021bd5b5f35ed8577dc1a85b8898d0edef133a4c1b5"
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
