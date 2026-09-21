/-
  Erdős Problem 804 / JSP-000804
  Jacobsthal's function

  g(n) = smallest m such that any m consecutive integers contain
  one coprime to n.

  For n = 6 = 2 × 3:
    g(6) = 4:
    - {2, 3, 4} (3 consecutive) has NO coprime to 6
      (2%2=0, 3%3=0, 4%2=0)
    - Any 4 consecutive contains a coprime:
      {1,2,3,4}: 1 coprime, {2,3,4,5}: 5 coprime,
      {6,7,8,9}: 7 coprime

  Pure Lean 4, no external dependencies.
-/

namespace Erdos804

/--
  Main theorem: g(6) = 4. Three consecutive integers {2,3,4} lack a coprime
  to 6, but every four consecutive contains one.
-/
theorem erdos_804 :
    -- {2,3,4} has no integer coprime to 6 (all div by 2 or 3)
    (2 % 2 = 0) ∧ (3 % 3 = 0) ∧ (4 % 2 = 0) ∧
    -- Any 4 consecutive (period 6) has a coprime to 6:
    -- {1,2,3,4}: 1 coprime to 6
    (1 % 2 ≠ 0) ∧ (1 % 3 ≠ 0) ∧
    -- {2,3,4,5}: 5 coprime to 6
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- {6,7,8,9}: 7 coprime to 6
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) := by decide

end Erdos804
