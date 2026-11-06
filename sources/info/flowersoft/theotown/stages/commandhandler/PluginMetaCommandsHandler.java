package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.draftloader.TransitionLoader;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class PluginMetaCommandsHandler implements CommandHandler {
    public final City city;
    public TransitionRunner runner;
    public final Map<String, List<Transition>> commands = new HashMap();
    public final Map<String, Draft> commandSender = new HashMap();

    public PluginMetaCommandsHandler(City city) {
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayNames;
        this.city = city;
        TransitionLoader transitionLoader = new TransitionLoader();
        for (Draft draft : Drafts.getDraftsWithTag("console", Draft.class)) {
            JSONObject metaTag = draft.getMetaTag("console");
            if (metaTag != null && (jSONObjectOptJSONObject = metaTag.optJSONObject("commands")) != null && (jSONArrayNames = jSONObjectOptJSONObject.names()) != null) {
                for (int i = 0; i < jSONArrayNames.length(); i++) {
                    String strOptString = jSONArrayNames.optString(i);
                    if (strOptString != null && !strOptString.isEmpty()) {
                        try {
                            List<Transition> listLoadTransitions = transitionLoader.loadTransitions(jSONObjectOptJSONObject, strOptString);
                            if (listLoadTransitions != null) {
                                this.commands.put(strOptString, listLoadTransitions);
                                this.commandSender.put(strOptString, draft);
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                            TheoTown.analytics.logException(e);
                        }
                    }
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String str) {
        return this.city != null && this.commands.containsKey(str);
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public void handle(JSONObject jSONObject, String str, Setter<String> setter) {
        if (this.city == null) {
            return;
        }
        if (this.runner == null) {
            this.runner = new TransitionRunner(this.city);
        }
        Draft draft = this.commandSender.get(str);
        this.runner.acceptRandom(this.commands.get(str), "console " + str, draft != null ? draft.luaRepr : null, draft != null ? draft.isPrivileged() : false);
        this.runner.run();
        String lastFeedback = this.runner.getLastFeedback();
        if (lastFeedback != null) {
            setter.set(lastFeedback);
        }
    }
}
