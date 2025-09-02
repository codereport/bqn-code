# Expand Link: https://github.com/uber/aresdb/blob/a8d2aedc6850b10a6cc9381ba780800290b2756d/query/sort_reduce.cu#L252
# Test Link:   https://github.com/uber/aresdb/blob/a8d2aedc6850b10a6cc9381ba780800290b2756d/query/algorithm_unittest.cu#L1747

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

IrrChunk ← { 1↓𝕩⊔˜1+𝕨/↕≠𝕨 } # irregular chunk

Expand ← { 𝕊 idv‿idx‿bc‿d‿n‿c: # inputDimValues‿inputIndex‿baseCounts‿dims‿len‿cap
    m ← idx⊏fn.Deltas bc # mask
    ∾∾d{ c↑m/𝕨 fn.Chunk 𝕩 }¨idv IrrChunk˜n×d
}

# Tests
inputDimValues ← ⟨
    1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 0,
    1, 0, 2, 0, 3, 0, 2, 0, 3, 0, 1, 0,
    1, 2, 3, 2, 3, 1,
    1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1
⟩
inputIndex ← ⟨1, 2, 4, 7, 9, 12⟩
baseCounts ← ⟨0, 0, 1, 3, 4, 7, 8, 10, 13, 14, 16, 19, 22, 23, 26, 30⟩
expectedDimValues ← ⟨
    1, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0,
    3, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0,
    1, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0, 2, 0, 2, 0, 2, 0, 3, 0,
    1, 2, 2, 3, 3, 3, 2, 2, 2, 3,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
⟩

dims ← 4‿2‿1‿1‿1‿1
len  ← 6
cap  ← 10

u.UnitTest (Expand ⟨inputDimValues, inputIndex, baseCounts, dims, len, cap⟩) ≡ expectedDimValues
