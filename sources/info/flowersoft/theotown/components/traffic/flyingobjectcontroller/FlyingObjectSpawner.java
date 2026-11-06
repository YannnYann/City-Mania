package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.draft.FlyingObjectDraft;

/* JADX INFO: loaded from: classes4.dex */
public interface FlyingObjectSpawner {
    void remove(FlyingObject flyingObject);

    FlyingObject spawn(FlyingObjectDraft flyingObjectDraft, int i, int i2, int i3, int i4);
}
