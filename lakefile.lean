import Lake
open Lake DSL

package "jsp-000817-formalization" where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib ErdosProblems

lean_lib Erdos984

@[default_target]
lean_lib «JSP_000817» where
  roots := #[`JSP_000817, `Erdos984]
