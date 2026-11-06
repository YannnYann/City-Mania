package info.flowersoft.theotown.city;

import info.flowersoft.theotown.city.objects.Pipe;

/* JADX INFO: loaded from: classes4.dex */
public class PipeList extends AbstractConnectionList<Pipe> {
    @Override // info.flowersoft.theotown.city.AbstractConnectionList
    public boolean hasConnection(Pipe pipe) {
        return pipe.hasConnection();
    }
}
