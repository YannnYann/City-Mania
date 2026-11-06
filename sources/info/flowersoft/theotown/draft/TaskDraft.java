package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.draft.requirement.DraftRequirement;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TaskDraft extends Draft {
    public List<Action> actions;
    public List<Command> commands;

    public static class Action {
        public DraftRequirement requirement;
        public String task;
    }

    public static class Command {
        public String id;
        public String task;
    }
}
