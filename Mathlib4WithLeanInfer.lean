import LeanInfer
import Mathlib.Data.Set.Basic
import Mathlib.Data.Set.Finite
import Mathlib.Order.Filter.Basic

example (f g : Filter α) : f = g ↔ (∀ s, s ∈ f ↔ s ∈ g) := by
  suggest_tactics
  -- Try this: 
  -- 🎉 simp only [Filter.ext_iff, Set.mem_setOf_eq]
  -- constructor
  -- rw [ext_iff, ext_iff]
  -- simp only [Filter.Eventually, ext_iff, exists_imp]
  -- simp_rw [← eq_comm, compl_compl, eq_iff_iff]
  -- simp only [Filter.mem_iff, image_iff_bex, exists_prop]
  -- simp only [eq_iff_iff, forall_congr', forall_exists_index]
  -- simp only [← @filter_eq_iff, forall_exists_index, Iff.comm]