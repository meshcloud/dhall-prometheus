--| The Labels schema provides functions to simplify JSON/Type creation
let JSON =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v22.0.0/Prelude/JSON/package.dhall
        sha256:5f98b7722fd13509ef448b075e02b9ff98312ae7a406cf53ed25012dbc9990ac

let severity
    : Text -> JSON.Type
    = \(sev : Text) -> JSON.object (toMap { severity = JSON.string sev })

let mapText
    : List { mapKey : Text, mapValue : Text } -> JSON.Type
    = https://raw.githubusercontent.com/softwarefactory-project/dhall-zuul/0.2.0/Zuul/Vars/mapText.dhall
        sha256:66a4ca966e805ff1da369041bde29b4d850700d61ab00f1ce182d95bb07c88f1

in  { Type = JSON.Type, severity, mapText }
