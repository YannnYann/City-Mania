package info.flowersoft.theotown.scripting.libraries;

import info.flowersoft.theotown.city.ScenarioInfo;
import info.flowersoft.theotown.store.PluginUnloader;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScenarioLibrary.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioLibraryKt {
    public static final void applyToDrafts(ScenarioInfo scenarioInfo) {
        Intrinsics.checkNotNullParameter(scenarioInfo, "<this>");
        PluginUnloader.getInstance().apply(scenarioInfo.getAllowPluginsType(), scenarioInfo.getDisabledDraftIds(), scenarioInfo.getEffectiveWhitelistedDraftIds(), scenarioInfo.getAllowedPluginIds(), scenarioInfo.getId());
    }
}
