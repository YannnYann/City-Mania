package info.flowersoft.theotown.online;

import com.badlogic.gdx.utils.IntMap;
import info.flowersoft.theotown.util.ThemeManager;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class RegionTagMap {
    public IntList ids = new IntList();
    public IntMap<Tag> tagsById = new IntMap<>();

    public static class Tag {
        public Color color;
        public int ctr;
        public String name;

        public Tag(String str, Color color, int i) {
            this.name = str;
            this.color = color;
            this.ctr = i;
        }
    }

    public void put(int i, String str, Color color, int i2) {
        if (this.tagsById.put(i, new Tag(str, color, i2)) == null) {
            this.ids.add(i);
        }
    }

    public int getId(int i) {
        return this.ids.get(i);
    }

    public boolean containsIds(int i) {
        return this.tagsById.containsKey(i);
    }

    public String getNameById(int i) {
        Tag tagById = getTagById(i);
        if (tagById != null) {
            return tagById.name;
        }
        return null;
    }

    public Color getRawColorById(int i) {
        Tag tagById = getTagById(i);
        return tagById != null ? tagById.color : Colors.BLACK;
    }

    public Color getThemedColorById(int i) {
        return ThemeManager.INSTANCE.transformColor(getRawColorById(i));
    }

    public int getRegionCountById(int i) {
        Tag tagById = getTagById(i);
        if (tagById != null) {
            return tagById.ctr;
        }
        return -1;
    }

    public Tag getTagById(int i) {
        return this.tagsById.get(i);
    }

    public int size() {
        return this.ids.size();
    }
}
