# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261029.499"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.499/reactor-cli_v1.20261029.499_darwin-arm64.tar.gz"
      sha256 "e7b6298a76f3e76d15eb1a9043f284db5f8b1337f6cf60db3a4ab7b93d51dc4b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.499/reactor-cli_v1.20261029.499_darwin-amd64.tar.gz"
      sha256 "d5522ce51129c294e3b6a52001dc98378f797a658a5df5d1b332768ad0d84a1a"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.499/reactor-cli_v1.20261029.499_linux-arm64.tar.gz"
      sha256 "f592ef43b23434b33d5a1d127059f8a70a0a38b0e2028d281126509971404a68"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261029.499/reactor-cli_v1.20261029.499_linux-amd64.tar.gz"
      sha256 "1ef3d06f0caf335ca5817d256754a4803b55ab289ec076e979e238b43f011c98"
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
