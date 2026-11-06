# Gitea tracking for the 2026-10-13 Edva audit

Milestone: [Edva correctness and documentation audit follow-ups](https://gitea.gde.to/ike/dva/milestones/7) (18 open issues). Repository source and the report are published to [GitHub](https://github.com/ElenaFri/edva).

| Finding | Gitea issue | Topic |
|---:|---|---|
| 1 | [#149](https://gitea.gde.to/ike/dva/issues/149) | codegen: align array division and remainder guards with scalar semantics |
| 2 | [#150](https://gitea.gde.to/ike/dva/issues/150) | json: isolate nested container children instead of slicing shared arenas from zero |
| 3 | [#151](https://gitea.gde.to/ike/dva/issues/151) | json: enforce separators, number grammar, and complete document consumption |
| 4 | [#152](https://gitea.gde.to/ike/dva/issues/152) | json: validate hex escapes and decode UTF-16 surrogate pairs correctly |
| 5 | [#153](https://gitea.gde.to/ike/dva/issues/153) | json: preserve representable subnormal numbers during exponent scaling |
| 6 | [#154](https://gitea.gde.to/ike/dva/issues/154) | str/io: preserve significant digits and signed/unsigned limits in numeric formatting |
| 7 | [#155](https://gitea.gde.to/ike/dva/issues/155) | str: handle infinity and NaN before float formatting normalization |
| 8 | [#156](https://gitea.gde.to/ike/dva/issues/156) | io: fix placeholder advancement and bound brace lookahead |
| 9 | [#157](https://gitea.gde.to/ike/dva/issues/157) | io: preserve partial-write progress and expose write failures/backpressure |
| 10 | [#158](https://gitea.gde.to/ike/dva/issues/158) | io: distinguish read errors and would-block from EOF |
| 11 | [#159](https://gitea.gde.to/ike/dva/issues/159) | net: close sockets on failure and terminate addrinfo walks on socket exhaustion |
| 12 | [#160](https://gitea.gde.to/ike/dva/issues/160) | net: format IPv4 octets and ports as unsigned values |
| 13 | [#161](https://gitea.gde.to/ike/dva/issues/161) | layout: unify target classification for thumb and other 32-bit triples |
| 14 | [#162](https://gitea.gde.to/ike/dva/issues/162) | docs: replace stale stdlib APIs and repair executable networking and IO examples |
| 15 | [#163](https://gitea.gde.to/ike/dva/issues/163) | docs: explain recoverable named Error branches versus aborting extraction |
| 16 | [#164](https://gitea.gde.to/ike/dva/issues/164) | docs: classify every Dva block and enforce example compilation/execution in CI |
| 17 | [#165](https://gitea.gde.to/ike/dva/issues/165) | docs/llms: correct capability claims, literal rules, diagnostics, and coverage gaps |
| 18 | [#166](https://gitea.gde.to/ike/dva/issues/166) | sort: add a stable scalable implementation for larger collections |

Findings 13, 14, 16, and 17 are follow-ups to closed issues #136, #137, #141, #138, and #140; the Gitea issue descriptions explain the remaining scope. The milestone and issues are managed in Gitea. Commits go to the configured GitHub origin.
