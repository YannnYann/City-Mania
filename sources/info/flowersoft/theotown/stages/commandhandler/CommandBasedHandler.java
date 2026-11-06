package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CommandBasedHandler implements CommandHandler {
    public final Map<String, Command> commands = new HashMap();

    public interface Command {
        void handle(Setter<String> setter);
    }

    public final Command getSimpleCommand(final String str) {
        return new Command() { // from class: info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.stages.commandhandler.CommandBasedHandler.Command
            public final void handle(Setter setter) {
                setter.set(str);
            }
        };
    }

    public void addCommand(String str, Command command) {
        if (this.commands.containsKey(str)) {
            throw new IllegalArgumentException("Cannot register command " + str + " a second time");
        }
        this.commands.put(str, command);
    }

    public void addCommand(String str, String str2) {
        addCommand(str, getSimpleCommand(str2));
    }

    public void addCommand(String[] strArr, String str) {
        Command simpleCommand = getSimpleCommand(str);
        for (String str2 : strArr) {
            addCommand(str2, simpleCommand);
        }
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String str) {
        return this.commands.containsKey(str);
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public void handle(JSONObject jSONObject, String str, Setter<String> setter) throws JSONException {
        Command command = this.commands.get(str);
        if (command != null) {
            command.handle(setter);
        }
    }
}
