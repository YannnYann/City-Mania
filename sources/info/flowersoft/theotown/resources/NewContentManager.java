package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.util.SSP;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class NewContentManager {
    public static NewContentManager instance;
    public boolean firstRun;
    public Set<String> knownIds = new HashSet();

    public NewContentManager() {
        Set<String> stringSet = new SSP("newcontent").load().getStringSet("ids", null);
        if (stringSet != null) {
            this.knownIds.addAll(stringSet);
        } else {
            this.firstRun = true;
        }
    }

    public void register(String str) {
        if (!this.firstRun || str == null) {
            return;
        }
        this.knownIds.add(str);
    }

    public void endRegister() {
        if (this.firstRun) {
            save();
            this.firstRun = false;
        }
    }

    public boolean isNew(String str) {
        return (str == null || this.knownIds.contains(str)) ? false : true;
    }

    public void markAsNotNew(String str) {
        if (str == null || !this.knownIds.add(str)) {
            return;
        }
        save();
    }

    public final void save() {
        SSP.Writer writerEdit = new SSP("newcontent").edit();
        writerEdit.putStringSet("ids", this.knownIds);
        writerEdit.apply();
    }

    public static void init() {
        instance = new NewContentManager();
    }

    public static void dispose() {
        instance = null;
    }

    public static NewContentManager getInstance() {
        return instance;
    }
}
