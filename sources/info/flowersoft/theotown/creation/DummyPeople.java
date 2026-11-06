package info.flowersoft.theotown.creation;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.People;

/* JADX INFO: loaded from: classes4.dex */
public final class DummyPeople extends People {
    @Override // info.flowersoft.theotown.city.components.People
    public int getPeople(int i) {
        return 0;
    }

    @Override // info.flowersoft.theotown.city.components.People
    public float getPeopleNeededSpace(int i) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }
}
