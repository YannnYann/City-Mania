package info.flowersoft.theotown.city;

import info.flowersoft.theotown.city.objects.Wire;

/* JADX INFO: loaded from: classes4.dex */
public class WireList extends AbstractConnectionList<Wire> {
    @Override // info.flowersoft.theotown.city.AbstractConnectionList
    public boolean hasConnection(Wire wire) {
        return wire.hasConnection();
    }
}
