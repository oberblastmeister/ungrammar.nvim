[
  "("
  ")"
] @punctuation.bracket

(token_ident) @string

(node 
  name: (ident) @symbol)

(seq_rule
  (ident) @type)

(labeled
  label: (ident) @label
  (ident) @type)

"?" @conditional

"*" @repeat

(comment) @comment

[
  ":"
  "|"
] @punctuation.delimiter

(ERROR) @error
