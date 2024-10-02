--| The Labels schema provides functions to simplify JSON/Type creation
let JSON =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v22.0.0/Prelude/JSON/package.dhall
        sha256:5f98b7722fd13509ef448b075e02b9ff98312ae7a406cf53ed25012dbc9990ac

let severity
    : Text -> JSON.Type
    = \(sev : Text) -> JSON.object (toMap { severity = JSON.string sev })

let mapText = ./Vars/mapText.dhall

in  { Type = JSON.Type, severity, mapText }
