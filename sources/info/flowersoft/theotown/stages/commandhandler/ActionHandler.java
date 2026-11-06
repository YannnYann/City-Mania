package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draftloader.TransitionLoader;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class ActionHandler implements CommandHandler {
    public final City city;

    public ActionHandler(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String str) {
        return str.equals("action") || str.equals("condition");
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public void handle(JSONObject jSONObject, String str, Setter<String> setter) throws JSONException {
        if (this.city == null) {
            setter.set("No city context");
            return;
        }
        try {
            TransitionLoader transitionLoader = new TransitionLoader();
            TransitionRunner transitionRunner = new TransitionRunner(this.city);
            if (str.equals("action")) {
                setter.set("Action result: " + transitionRunner.doAction(transitionLoader.loadAction((Object) jSONObject.getJSONObject(str)), 0, 0, 1, 1, -1, false, "console " + str, null));
                return;
            }
            if (str.equals("condition")) {
                setter.set("Condition result: " + transitionRunner.checkCondition(transitionLoader.loadCondition((Object) jSONObject.getJSONObject(str)), 0L, 0L, 1L, 1L, -1, "", null));
            }
        } catch (Exception e) {
            setter.set(e.getMessage());
        }
    }
}
