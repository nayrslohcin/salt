install py.test:
  pkg.installed:
    - name: python-pytest

clone salt scripts repo:
  pkg.installed:
    - name: git
  git.latest:
    - name: https://github.com/nayrslohcin/salt
    - rev: master
    - target: /tmp/salt

run py.test:
  cmd.run:
    - name: /tmp/salt/test_saltruner.sh
    - cwd: /tmp/salt/
    - stateful: True
