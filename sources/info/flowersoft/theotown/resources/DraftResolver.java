package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.draft.Draft;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.LazyGetter;

/* JADX INFO: loaded from: classes4.dex */
public class DraftResolver<T extends Draft> extends LazyGetter<T> {
    public DraftResolver(final String str) {
        super(new Getter() { // from class: info.flowersoft.theotown.resources.DraftResolver$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Drafts.ALL.get(str);
            }
        });
    }
}
