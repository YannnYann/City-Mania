package info.flowersoft.theotown.stages.commandhandler;

import com.ironsource.R6;

/* JADX INFO: compiled from: FunnyHandler.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class FunnyHandler extends CommandBasedHandler {
    public FunnyHandler() {
        addCommand("sudo", "Zoo do?");
        addCommand("whoami", "TheoTown");
        addCommand("TheoTown", "true");
        addCommand(R6.L, "Yes, create one");
        addCommand("cheat", "No cheats here!");
        addCommand("hack", "Good luck :)");
        addCommand(new String[]{"decrypt", "import"}, "Forget it!");
    }
}
