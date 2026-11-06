package info.flowersoft.theotown.draft;

/* JADX INFO: loaded from: classes4.dex */
public enum PrivilegedMode {
    Unprivileged(0),
    PrivilegedKey(1),
    LocalBasic(1),
    LocalSuper(2),
    VerifiedPluginFileBasic(1),
    VerifiedPluginFileSuper(2),
    VerifiedStorePluginBasic(1),
    VerifiedStorePluginSuper(2),
    Internal(2);

    public final int level;

    public static PrivilegedMode forStore(int i) {
        if (i == 1) {
            return VerifiedStorePluginBasic;
        }
        if (i == 2) {
            return VerifiedStorePluginSuper;
        }
        throw new IllegalArgumentException("Invalid level: " + i);
    }

    public static PrivilegedMode forLocal(int i) {
        if (i == 1) {
            return LocalBasic;
        }
        if (i == 2) {
            return LocalSuper;
        }
        throw new IllegalArgumentException("Invalid level: " + i);
    }

    public static PrivilegedMode forVerifiedExternalPlugin(int i) {
        if (i == 1) {
            return VerifiedPluginFileBasic;
        }
        if (i == 2) {
            return VerifiedPluginFileSuper;
        }
        throw new IllegalArgumentException("Invalid level: " + i);
    }

    public boolean isPrivileged() {
        return this.level >= 1;
    }

    public boolean isSuperPrivileged() {
        return this.level >= 2;
    }

    PrivilegedMode(int i) {
        this.level = i;
    }
}
