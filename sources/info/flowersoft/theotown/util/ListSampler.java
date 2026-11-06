package info.flowersoft.theotown.util;

import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class ListSampler<T> {
    public List<T> sampledList;

    public ListSampler(List<T> list) {
        this.sampledList = list;
    }

    public T sample(Random random) {
        try {
            int size = this.sampledList.size();
            if (size > 0) {
                return this.sampledList.get(random.nextInt(size));
            }
        } catch (IndexOutOfBoundsException unused) {
        }
        return null;
    }
}
