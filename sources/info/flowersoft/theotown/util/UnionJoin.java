package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public class UnionJoin {
    public UnionJoin parent = this;

    public UnionJoin getRoot() {
        UnionJoin unionJoin = this.parent;
        while (true) {
            UnionJoin unionJoin2 = unionJoin.parent;
            if (unionJoin == unionJoin2) {
                break;
            }
            unionJoin = unionJoin2;
        }
        UnionJoin unionJoin3 = this;
        while (unionJoin3 != unionJoin) {
            UnionJoin unionJoin4 = unionJoin3.parent;
            unionJoin3.parent = unionJoin;
            unionJoin3 = unionJoin4;
        }
        return unionJoin;
    }

    public UnionJoin join(UnionJoin unionJoin) {
        if (getRoot() != unionJoin.getRoot()) {
            unionJoin.getRoot().parent = getRoot();
        }
        return getRoot();
    }
}
