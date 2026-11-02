# Copyright (c) 2026 Reactor Technologies, Inc. All rights reserved.
#
# This file is a template — do NOT edit it directly.
# CI renders it with `//:ci:release -- render-formula --product awsrea` and
# pushes the result to reactor-team/homebrew-tools as Formula/awsrea.rb.

class Awsrea < Formula
  desc "AWS IAM Identity Center sign-in and profile switcher"
  homepage "https://github.com/reactor-team/homebrew-tools"
  version "v1.20261102.114"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261102.114/awsrea_v1.20261102.114_darwin-arm64.tar.gz"
      sha256 "bad0329be73994c59150db95533929fc9744451e8c03323fcb82d7f48ec39672"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261102.114/awsrea_v1.20261102.114_darwin-amd64.tar.gz"
      sha256 "d1032587f3cc992327832dfa642f9793f2e263322117fec601211099bee71a90"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.reactor.inc/awsrea/v1.20261102.114/awsrea_v1.20261102.114_linux-arm64.tar.gz"
      sha256 "d4f80fec1267887296eb6350ba94cd0578d2efe8bd18aa41e695d27fce70b9d1"
    end
    on_intel do
      url "https://releases.reactor.inc/awsrea/v1.20261102.114/awsrea_v1.20261102.114_linux-amd64.tar.gz"
      sha256 "ebb85d9e5723b0a0ec0046fdac107060fc7d9ef707f43e660f68947d0e60a604"
    end
  end

  def install
    bin.install "awsrea"
    # Keeps existing `aws-sso-reactor` aliases and credential_process lines working.
    bin.install_symlink "awsrea" => "aws-sso-reactor"
  end

  def caveats
    <<~EOS
      Configure awsrea before first use:
        awsrea init
      or copy the config file your team provides to ~/.reactor/awsrea.yaml.

      To let awsrea switch profiles in your shell, add this line to ~/.zshrc:
        eval "$(awsrea shell-init)"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/awsrea --version")
  end
end
