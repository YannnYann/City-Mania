package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class FrameList {
    public final IntList data = new IntList();

    public void load(JSONArray jSONArray) throws JSONException {
        clear();
        int i = 0;
        while (true) {
            int i2 = i + 4;
            if (i2 >= jSONArray.length()) {
                return;
            }
            add(jSONArray.getInt(i), jSONArray.getInt(i + 1), jSONArray.getInt(i + 2), jSONArray.getInt(i + 3), jSONArray.getInt(i2));
            i += 5;
        }
    }

    public JSONArray save() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < size(); i++) {
            jSONArray.put(getAreaId(i));
            jSONArray.put(getX(i));
            jSONArray.put(getY(i));
            jSONArray.put(getWidth(i));
            jSONArray.put(getHeight(i));
        }
        return jSONArray;
    }

    public int size() {
        return this.data.size() / 5;
    }

    public void clear() {
        this.data.clear();
    }

    public void clearAndRelease() {
        this.data.clearAndRelease();
    }

    public boolean isEmpty() {
        return this.data.isEmpty();
    }

    public void removeFirst() {
        this.data.removeAt(0, 5);
    }

    public void add(int i, int i2, int i3, int i4, int i5) {
        this.data.add(i);
        this.data.add(i2);
        this.data.add(i3);
        this.data.add(i4);
        this.data.add(i5);
    }

    public boolean matches(int i, int i2, int i3, int i4, int i5, int i6) {
        return i >= 0 && i < size() && getAreaId(i) == i2 && getX(i) == i3 && getY(i) == i4 && getWidth(i) == i5 && getHeight(i) == i6;
    }

    public int getAreaId(int i) {
        return this.data.get(i * 5);
    }

    public int getX(int i) {
        return this.data.get((i * 5) + 1);
    }

    public int getY(int i) {
        return this.data.get((i * 5) + 2);
    }

    public int getWidth(int i) {
        return this.data.get((i * 5) + 3);
    }

    public int getHeight(int i) {
        return this.data.get((i * 5) + 4);
    }
}
