;;;; kgcreator-cl.asd

(asdf:defsystem #:kgcreator-cl
  :description "Knowledge Graph Creator Produces RDF and Cypher (Neo4j and Memgraph) Input Files"
  :author "Mark Watson <markw <at> markwatson.com>"
  :license "Apache 2"
  :depends-on (#:entity-uris #:categorize_summarize #:myutils #:unix-opts #:cl-who #:hunchentoot) ;;  #:parenscript)
  :components
    ((:file "package")
                (:file "kgcreator")
                (:file "neo4j")
                (:file "rdf")))

