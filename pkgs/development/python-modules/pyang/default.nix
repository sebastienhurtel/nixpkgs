{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  lxml,
}:
buildPythonPackage rec {
  pname = "pyang";
  version = "2.6.1";

  src = fetchFromGitHub {
    owner = "mbj4668";
    repo = pname;
    tag = "pyang-${version}";
    hash = "sha256-sZokdBegfkDUXuf9lHIZ7AJzjomxSRpwyX+myquQy3Y=";
  };
  propagatedBuildInputs = [ lxml ];

  meta = with lib; {
    description = "An extensible YANG (RFC 6020/7950) validator. Provides a framework for plugins that can convert YANG modulesto other formats.";
    homepage = "https://github.com/mbj4668/pyang";
    license = licenses.isc;
    maintainers = with maintainers; [ shu ];
  };
}
