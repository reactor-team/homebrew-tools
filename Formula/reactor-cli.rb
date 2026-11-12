# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261112.4"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.4/reactor-cli_v1.20261112.4_darwin-arm64.tar.gz"
      sha256 "36593094ec81ae3d77f5717404b488117a137045a0f70339edee5ed8e1e22653"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.4/reactor-cli_v1.20261112.4_darwin-amd64.tar.gz"
      sha256 "d921a75e8d9621a6accf72126c152b0a80f4a11f7174d1e15d0fbf37108054c8"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.4/reactor-cli_v1.20261112.4_linux-arm64.tar.gz"
      sha256 "9c129f22ddd4f3776b0d7b1d49630a207084e2847eb391480313b902eeffaa8a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261112.4/reactor-cli_v1.20261112.4_linux-amd64.tar.gz"
      sha256 "65ff94cc088cbd93f4e936221a2eb7720be9793c3c06854716c931b9a6aa5647"
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
