package info.flowersoft.theotown.city.components;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RankDraft;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Requirement extends CityComponent {
    public abstract void flushUnlocked();

    public abstract RankDraft getNewRank();

    public abstract Draft getNewUnlockedDraft();

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 11;
    }

    public abstract boolean hasNewRank();

    public abstract boolean hasNewUnlockedDraft();
}
