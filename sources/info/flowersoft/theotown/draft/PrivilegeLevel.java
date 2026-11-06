package info.flowersoft.theotown.draft;

/* JADX INFO: loaded from: classes4.dex */
public interface PrivilegeLevel {
    static String localize(int i) {
        if (i == 0) {
            return "None";
        }
        if (i == 1) {
            return "Privileged";
        }
        if (i == 2) {
            return "Super";
        }
        throw new IllegalArgumentException("Unknown level " + i);
    }
}
