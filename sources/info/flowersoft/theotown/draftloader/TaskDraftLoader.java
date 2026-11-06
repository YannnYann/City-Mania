package info.flowersoft.theotown.draftloader;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.TaskDraft;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class TaskDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"task"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws JSONException {
        TaskDraft taskDraft = new TaskDraft();
        loadDefaults(taskDraft);
        taskDraft.commands = new ArrayList();
        if (this.src.has("commands")) {
            JSONArray jSONArray = this.src.getJSONArray("commands");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                TaskDraft.Command command = new TaskDraft.Command();
                command.id = jSONObject.getString(C3670j8.x);
                command.task = jSONObject.optString("task", null);
                taskDraft.commands.add(command);
            }
        }
        taskDraft.actions = new ArrayList();
        if (this.src.has("actions")) {
            JSONArray jSONArray2 = this.src.getJSONArray("actions");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                TaskDraft.Action action = new TaskDraft.Action();
                action.requirement = getRequirement(jSONObject2.getJSONObject("requirement"), taskDraft.id, taskDraft.isPrivileged(), action.requirement);
                action.task = jSONObject2.optString("task", null);
                taskDraft.actions.add(action);
            }
        }
        return taskDraft;
    }
}
