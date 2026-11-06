package info.flowersoft.theotown.components.transition;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class TaggedIntEnum {
    public int count;
    public final Map<String, Integer> map = new HashMap();

    public int allocate(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        if (this.map.containsKey(lowerCase)) {
            throw new IllegalArgumentException("Duplicate tag: " + lowerCase);
        }
        this.map.put(lowerCase, Integer.valueOf(this.count));
        int i = this.count;
        this.count = i + 1;
        return i;
    }

    public int resolve(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        Integer num = this.map.get(lowerCase);
        if (num == null) {
            throw new IllegalArgumentException("Tag not found: " + lowerCase);
        }
        return num.intValue();
    }

    public boolean canResolve(String str) {
        return this.map.containsKey(str.toLowerCase(Locale.ENGLISH));
    }

    public int size() {
        return this.count;
    }
}
