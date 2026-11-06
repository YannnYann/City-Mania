package info.flowersoft.theotown.cityfile;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RegionProvider {
    public abstract MapDirectory get(int i);

    public abstract int getAnyId();

    public abstract int getDefaultRegionId(String str);

    public abstract int getIndex(int i);

    public abstract boolean isOnline();

    public abstract void load(Runnable runnable);

    public abstract int nextId(int i);

    public abstract int prevId(int i);

    public abstract int size();
}
