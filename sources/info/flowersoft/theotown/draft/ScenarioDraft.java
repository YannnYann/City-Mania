package info.flowersoft.theotown.draft;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: ScenarioDraft.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioDraft extends Draft {
    public AbstractFile cityFile;
    public String completedVarName;
    public String discordUrl;

    public final AbstractFile getCityFile() {
        return this.cityFile;
    }

    public final void setCityFile(AbstractFile abstractFile) {
        this.cityFile = abstractFile;
    }

    public final String getDiscordUrl() {
        return this.discordUrl;
    }

    public final void setDiscordUrl(String str) {
        this.discordUrl = str;
    }

    public final String getCompletedVarName() {
        return this.completedVarName;
    }

    public final void setCompletedVarName(String str) {
        this.completedVarName = str;
    }

    public final String getNormalizedTargetFileName() {
        StringBuilder sb = new StringBuilder();
        sb.append("scenario_");
        String id = this.id;
        Intrinsics.checkNotNullExpressionValue(id, "id");
        sb.append(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(id, "#", "", false, 4, (Object) null), "$", "", false, 4, (Object) null), "%", "", false, 4, (Object) null), "!", "", false, 4, (Object) null), C3522b4.j.c, "", false, 4, (Object) null), "'", "", false, 4, (Object) null), "{", "", false, 4, (Object) null), "\"", "", false, 4, (Object) null), "}", "", false, 4, (Object) null), ":", "", false, 4, (Object) null), "\\", "", false, 4, (Object) null), "@", "", false, 4, (Object) null), "<", "", false, 4, (Object) null), ">", "", false, 4, (Object) null), "`", "", false, 4, (Object) null), "´", "", false, 4, (Object) null), "|", "", false, 4, (Object) null), "?", "", false, 4, (Object) null), "/", "", false, 4, (Object) null));
        return sb.toString();
    }

    public final boolean isCompleted() {
        return (this.completedVarName == null || GlobalTransitionVariables.getInstance().get(this.completedVarName, 0L) == 0) ? false : true;
    }
}
