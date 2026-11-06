package info.flowersoft.theotown.util;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ListUtils {
    public static <T> List<T> mix(List<T> list, List<T> list2) {
        if (list2.size() > list.size()) {
            list2 = list;
            list = list2;
        }
        int size = list.size();
        int size2 = list2.size();
        for (int i = 0; i < list2.size(); i++) {
            list.add(list2.get(i));
        }
        int size3 = list.size();
        if (size2 > 1) {
            for (int i2 = size; i2 < size3; i2++) {
                Collections.swap(list, i2, (int) ((((long) (i2 - size)) * ((long) (size3 - 1))) / ((long) (size2 - 1))));
            }
        }
        return list;
    }
}
