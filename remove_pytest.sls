install vim:
  pkg.removed:
    - name: python-pytest

clone salt scripts repo:
  pkg.removed:
    - name: git

run py.test:
  cmd.run:
    - name: rm -rf /tmp/salt
    - cwd: /
