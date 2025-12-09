(lang dune 3.5)

(name json-data-encoding)

(license "MIT")

(authors
   "Nomadic Labs"
   "Ocamlpro")

(maintainers
   "Pierre Boutillier <pierre.boutillier@laposte.net>")

(source (github pirbo/json-data-encoding))

(package
   (name json-data-encoding)
   (synopsis "Type-safe encoding to and decoding from JSON")
   (depends
      (ocaml (>= 4.10))
      (uri (>= 1.9.0))
      (hex (>= 1.3.0))
      (crowbar (and :with-test (>= 0.2.2)))
      (alcotest (and :with-test (>= 1.9.1)))
      (js_of_ocaml-compiler :with-test))
   (conflicts (yojson (< 3)))
)

(package
   (name json-data-encoding-bson)
   (synopsis "Type-safe encoding to and decoding from JSON (bson support)")
   (depends
      (ocaml (>= 4.10))
      (json-data-encoding (= :version))
      (ocplib-endian (>= 1.0))
      (crowbar (and :with-test (>= 0.2.2)))
      (alcotest (and :with-test (>= 1.9.1))))
)

(package
   (name json-data-encoding-browser)
   (synopsis "Type-safe encoding to and decoding from JSON (browser support)")
   (depends
      (ocaml (>= 4.10))
      (json-data-encoding (= :version))
      (js_of_ocaml (>= 3.3.0)))
)

(generate_opam_files true)
