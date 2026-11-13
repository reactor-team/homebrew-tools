# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261113.7"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.7/reactor-cli_v1.20261113.7_darwin-arm64.tar.gz"
      sha256 "934732a7bc6c16c09257bfa3b4c169b215f3f2dba70655d8757b61fa8b31e5f1"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.7/reactor-cli_v1.20261113.7_darwin-amd64.tar.gz"
      sha256 "fb9bd416f8d98436c0681da96c5b5e90b8508e981f8fcfdfbde6a62dc0a42060"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.7/reactor-cli_v1.20261113.7_linux-arm64.tar.gz"
      sha256 "8efbd985e54a6149c105c6c92c70994bc5689d5bf2721dbf07bae84cb8d0d92a"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261113.7/reactor-cli_v1.20261113.7_linux-amd64.tar.gz"
      sha256 "4bb9b11f3f4b416aa6dd98fa5baf9babbcceb5e3c0e9e72a4c98ebe931393c09"
    end
  end

  def install
    bin.install "reactor"
    # `reactor upgrade` reads this file and prints the command instead of
    # replacing a binary that Homebrew owns.
    (lib/"reactor-cli/upgrade-command").write "brew upgrade reactor-team/tools/reactor-cli\n"
  end

  test do
    output = shell_output("#{bin}/reactor version 2>&1")
    assert_match version.to_s, output
    assert_equal "brew upgrade reactor-team/tools/reactor-cli\n",
                 (lib/"reactor-cli/upgrade-command").read
  end
end
