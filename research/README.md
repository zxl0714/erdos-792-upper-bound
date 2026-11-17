# Research chronology

The [original problem statement](PROBLEM.md) asks for the order of $f(n)-n/3$. The six checkpoints below show how the project developed. Quotas are launch settings. The recorded statuses and findings belong to the corresponding runs.

| Run started (UTC+08:00) | Model and quota | Saved milestone |
| --- | --- | --- |
| 2026-11-15 13:49 | GPT-6.1 Sol, ultra, 10 min | [Initial checkpoint](runs/2026-11-15T05-49-03-483Z-f7a90017/SUMMARY.md) checks Bedert's lower bound and possible structure inputs. |
| 2026-11-15 13:59 | GPT-6 Astra, ultra, 3 h | [First continuation](runs/2026-11-15T05-59-51-817Z-3b4198da/SUMMARY.md) extracts a quantitative rate from Eberhard's finitary argument. |
| 2026-11-15 19:03 | GPT-6 Astra, ultra, 3 h | [Second continuation](runs/2026-11-15T11-03-40-924Z-43eaf45a/SUMMARY.md) develops the bound with excess $O(n/(\log\log n)^{1/20})$. |
| 2026-11-15 22:43 | GPT-6 Astra, ultra, 8 h | [Long run](runs/2026-11-15T14-43-05-516Z-de28bcb2/SUMMARY.md) studies time profiles, interval structure and divisor weights. |
| 2026-11-17 12:08 | GPT-6 Astra, ultra, 8 h | [Square-root logarithmic upper bound](runs/2026-11-17T04-08-08-259Z-ba89c4b5/SUMMARY.md) and obstructions to further generic moment estimates. |
| 2026-11-17 20:05 | GPT-6 Astra, ultra, 2 h | [Logarithmic upper bound](runs/2026-11-17T12-05-38-564Z-905bb2c7/SUMMARY.md) using direct ordinary counts, followed by checks of the remaining modulus cost. |

## Changes of route

- The [many-bin counterexample](notes/run17-generic-profile-moment-obstruction.md) and its [integer transfer](notes/run17-generic-moment-integer-transfer.md) explain why the generic moment approach stalled. The [review](notes/run17-generic-moment-obstruction-review.md) records the hypotheses retained by these examples.
- The [centered-overlap work](notes/run17-centered-overlap-manifest.md) treats two limiting cases of the shift-exclusion problem. The [original-count evidence](notes/run18-original-count-manifest.md) traces the transition to direct counts on the integer set and the final proof.
- The [modulus-cost obstruction](notes/run18-universal-origin-cost-ceiling.md) explains the limit of continuing with the same universal modulus. The [dilation mixture](notes/run18-truncated-dilation-prime-tests.md) passes a family of prime-periodic tests at their limiting scope. The general sum-free case remains to be proved.

The [archive index](ARCHIVE_INDEX.md) identifies the full workspace snapshot and the paths of additional records cited by these materials.
