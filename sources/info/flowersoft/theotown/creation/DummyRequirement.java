package info.flowersoft.theotown.creation;

import info.flowersoft.theotown.city.components.Requirement;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RankDraft;

/* JADX INFO: loaded from: classes4.dex */
public final class DummyRequirement extends Requirement {
    @Override // info.flowersoft.theotown.city.components.Requirement
    public void flushUnlocked() {
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public RankDraft getNewRank() {
        return null;
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public Draft getNewUnlockedDraft() {
        return null;
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public boolean hasNewRank() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public boolean hasNewUnlockedDraft() {
        return false;
    }
}
