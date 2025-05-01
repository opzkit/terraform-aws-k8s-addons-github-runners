match() {
  grep -Fq "${1}" ${2} || (echo "didn't find '${1}' in output" >&2 && exit 1)
}
