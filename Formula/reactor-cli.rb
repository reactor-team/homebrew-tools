# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20260709.17961"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17961/reactor-cli_v1.20260709.17961_darwin-arm64.tar.gz"
      sha256 "dd67b92d88006d50b48aee19781edb153605a1a5d84a299b67497fc1c67c2c2c"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17961/reactor-cli_v1.20260709.17961_darwin-amd64.tar.gz"
      sha256 "9e02bfdf58095959c54e10341e7949cab7a0e5541b37b4117f1fabf40c4bfcca"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17961/reactor-cli_v1.20260709.17961_linux-arm64.tar.gz"
      sha256 "043527a3c2d51769ff6f1c2ca29adf56bfdee3a50a18f94eafca6eca458ac398"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20260709.17961/reactor-cli_v1.20260709.17961_linux-amd64.tar.gz"
      sha256 "9737c2c445928cb7f072b2b74050914864210b39820b6c59648eb44c1a18a613"
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
