# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
# Created by M. Massenzio (marco@reactor.inc)
#
# This file is a template — do NOT edit it directly.
# It is rendered and pushed to homebrew-tools by scripts/publish.sh.

class ReactorCli < Formula
  desc "Reactor partner CLI for uploading images and model weights"
  homepage "https://github.com/reactor-team/reactor-cli"
  version "v1.20261126.3"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.3/reactor-cli_v1.20261126.3_darwin-arm64.tar.gz"
      sha256 "db73c01f14e1670aa4c0b9e97a7bf9c301d96f8a52f4dcc09d0c5164cd1d870b"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.3/reactor-cli_v1.20261126.3_darwin-amd64.tar.gz"
      sha256 "78f769627c92bd271aeb601add5b81dbfbf88dbe810a576c2db75869e99d1594"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.3/reactor-cli_v1.20261126.3_linux-arm64.tar.gz"
      sha256 "3228d0b78f545493231d0e8a9544db59a4755cdd66752339d24de5d8abc2f7ad"
    end
    on_intel do
      url "https://releases.reactor.inc/reactor-cli/v1.20261126.3/reactor-cli_v1.20261126.3_linux-amd64.tar.gz"
      sha256 "507ea83bf933e22bebc4b38a369b82330860b742ecee1e5ccdf1603af295ec37"
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
