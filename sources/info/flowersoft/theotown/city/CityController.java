package info.flowersoft.theotown.city;

import info.flowersoft.theotown.util.vfs.AbstractFile;

/* JADX INFO: loaded from: classes4.dex */
public interface CityController {
    void exit(boolean z);

    boolean isSavable();

    void load(String str);

    void loadFromExternal(AbstractFile abstractFile, boolean z, boolean z2, String str);

    void save(boolean z, Runnable runnable);
}
