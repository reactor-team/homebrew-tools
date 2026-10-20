# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261020.296"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.296/reactor-cli_v1.20261020.296_darwin-arm64.tar.gz"
      sha256 "3aa3302614951ce2ad95055a9a21fdf281f2892c5a563b6ed9b5c30f6e225b0b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.296/reactor-cli_v1.20261020.296_darwin-amd64.tar.gz"
      sha256 "5c84587ce04c7109e4b8cdaf0b505fd2a1053886d2d512965a3a8cb5c929d20e"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.296/reactor-cli_v1.20261020.296_linux-arm64.tar.gz"
      sha256 "efddaeef09263401a3a226f35d97415ed820f86131d8bb46ce5e452035c70610"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261020.296/reactor-cli_v1.20261020.296_linux-amd64.tar.gz"
      sha256 "9b8ba535cdbb8b666f615b48200b4afd9444a34c258a3df08653a4c9c9817577"
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
