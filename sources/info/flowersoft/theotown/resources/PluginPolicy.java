package info.flowersoft.theotown.resources;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PluginScriptPolicy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PluginPolicy {
    public boolean allowed;
    public long changeTimeMS;
    public final List<String> ids;
    public final String path;
    public boolean present;
    public boolean privileged;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PluginPolicy copy$default(PluginPolicy pluginPolicy, String str, List list, boolean z, boolean z2, boolean z3, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = pluginPolicy.path;
        }
        if ((i & 2) != 0) {
            list = pluginPolicy.ids;
        }
        if ((i & 4) != 0) {
            z = pluginPolicy.allowed;
        }
        if ((i & 8) != 0) {
            z2 = pluginPolicy.present;
        }
        if ((i & 16) != 0) {
            z3 = pluginPolicy.privileged;
        }
        if ((i & 32) != 0) {
            j = pluginPolicy.changeTimeMS;
        }
        long j2 = j;
        boolean z4 = z3;
        boolean z5 = z;
        return pluginPolicy.copy(str, list, z5, z2, z4, j2);
    }

    public final PluginPolicy copy(String path, List<String> ids, boolean z, boolean z2, boolean z3, long j) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(ids, "ids");
        return new PluginPolicy(path, ids, z, z2, z3, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PluginPolicy)) {
            return false;
        }
        PluginPolicy pluginPolicy = (PluginPolicy) obj;
        return Intrinsics.areEqual(this.path, pluginPolicy.path) && Intrinsics.areEqual(this.ids, pluginPolicy.ids) && this.allowed == pluginPolicy.allowed && this.present == pluginPolicy.present && this.privileged == pluginPolicy.privileged && this.changeTimeMS == pluginPolicy.changeTimeMS;
    }

    public int hashCode() {
        return (((((((((this.path.hashCode() * 31) + this.ids.hashCode()) * 31) + Boolean.hashCode(this.allowed)) * 31) + Boolean.hashCode(this.present)) * 31) + Boolean.hashCode(this.privileged)) * 31) + Long.hashCode(this.changeTimeMS);
    }

    public String toString() {
        return "PluginPolicy(path=" + this.path + ", ids=" + this.ids + ", allowed=" + this.allowed + ", present=" + this.present + ", privileged=" + this.privileged + ", changeTimeMS=" + this.changeTimeMS + ')';
    }

    public PluginPolicy(String path, List<String> ids, boolean z, boolean z2, boolean z3, long j) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(ids, "ids");
        this.path = path;
        this.ids = ids;
        this.allowed = z;
        this.present = z2;
        this.privileged = z3;
        this.changeTimeMS = j;
    }

    public final String getPath() {
        return this.path;
    }

    public /* synthetic */ PluginPolicy(String str, List list, boolean z, boolean z2, boolean z3, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? new ArrayList() : list, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) == 0 ? z3 : false, (i & 32) != 0 ? 0L : j);
    }

    public final List<String> getIds() {
        return this.ids;
    }

    public final boolean getAllowed() {
        return this.allowed;
    }

    public final void setAllowed(boolean z) {
        this.allowed = z;
    }

    public final boolean getPresent() {
        return this.present;
    }

    public final void setPresent(boolean z) {
        this.present = z;
    }

    public final boolean getPrivileged() {
        return this.privileged;
    }

    public final void setPrivileged(boolean z) {
        this.privileged = z;
    }

    public final long getChangeTimeMS() {
        return this.changeTimeMS;
    }

    public final void setChangeTimeMS(long j) {
        this.changeTimeMS = j;
    }
}
