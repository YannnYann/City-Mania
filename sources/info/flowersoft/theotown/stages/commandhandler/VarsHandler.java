package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler;
import io.blueflower.stapel2d.util.Setter;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class VarsHandler extends CommandBasedHandler {
    public final City city;

    public VarsHandler(City city) {
        this.city = city;
        addCommand("vlol", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                this.f$0.showVars(setter, true);
            }
        });
        addCommand("gvlol", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda1
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                this.f$0.showGlobalVars(setter, true);
            }
        });
        addCommand("vars", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                this.f$0.showVars(setter, false);
            }
        });
        addCommand("gvars", new CommandBasedHandler.Command() { // from class: info.flowersoft.theotown.stages.commandhandler.VarsHandler$$ExternalSyntheticLambda3
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                this.f$0.showGlobalVars(setter, false);
            }
        });
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler, info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String str) {
        return TheoTown.isPickleMode() && super.canHandle(str);
    }

    public final void showVars(Setter<String> setter, boolean z) {
        City city = this.city;
        if (city == null) {
            setter.set("No city context available");
            return;
        }
        Map<String, Long> transitionVars = city.getTransitionVars();
        int i = 0;
        for (String str : transitionVars.keySet()) {
            if (showVar(str) || z) {
                setter.set(str + " = " + transitionVars.get(str).longValue());
                i++;
            }
        }
        setter.set("Found " + i + " variable(s)");
    }

    public final void showGlobalVars(Setter<String> setter, boolean z) {
        GlobalTransitionVariables globalTransitionVariables = GlobalTransitionVariables.getInstance();
        int i = 0;
        for (String str : globalTransitionVariables.getNames()) {
            if (showVar(str) || z) {
                setter.set(str + " = " + globalTransitionVariables.get(str, 0L));
                i++;
            }
        }
        setter.set("Found " + i + " global variable(s)");
    }

    public final boolean showVar(String str) {
        return str != null && (str.length() < 1 || str.charAt(0) != '_') && !(str.length() >= 2 && str.charAt(0) == '!' && str.charAt(1) == '_');
    }
}
