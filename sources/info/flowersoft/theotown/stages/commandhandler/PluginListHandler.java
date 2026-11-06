package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.TPCModule;
import info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class PluginListHandler extends CommandBasedHandler {
    public PluginListHandler() {
        addCommand("plugins", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.PluginListHandler$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                PluginListHandler.m2317$r8$lambda$GzQ1cZHl1ovlfxBX1mQY9VB_8(setter);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$GzQ1cZ-Hl1ovl-fxBX1mQY9VB_8, reason: not valid java name */
    public static /* synthetic */ void m2317$r8$lambda$GzQ1cZHl1ovlfxBX1mQY9VB_8(Setter setter) {
        for (Draft draft : Drafts.ALL.values()) {
            if (draft.plugin && draft.index) {
                setter.set(draft.type + ": " + draft.id + " (" + draft.pluginFile + ")");
            }
        }
        if (TPCModule.getInstance().getCurrentUserTrustLevel() >= 2) {
            setter.set("Not indexed drafts:");
            for (Draft draft2 : Drafts.ALL.values()) {
                if (draft2.plugin && !draft2.index) {
                    setter.set(draft2.type + ": " + draft2.id + " (" + draft2.pluginFile + ")");
                }
            }
        }
    }
}
