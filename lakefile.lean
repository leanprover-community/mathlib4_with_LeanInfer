import Lake
open Lake DSL

package «mathlib4_with_LeanInfer» {
  -- add any package configuration options here
  moreLinkArgs := #["-L./lake-packages/LeanInfer/build/lib", "-lonnxruntime", "-lstdc++"]
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"
require LeanInfer from git "https://github.com/lean-dojo/LeanInfer.git" @ "v0.0.6"

@[default_target]
lean_lib «Mathlib4WithLeanInfer» {
  -- add any library configuration options here
}
