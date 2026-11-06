package info.flowersoft.theotown.city.toolaction;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ToolActionGroup {
    public List<ToolAction> actions = new ArrayList();
    public List<List<ToolAction>> groupedActions = new ArrayList();

    public void add(ToolAction toolAction) {
        this.actions.add(toolAction);
        this.groupedActions.add(Collections.singletonList(toolAction));
    }

    public void add(ToolAction toolAction, ToolAction toolAction2) {
        add(Arrays.asList(toolAction, toolAction2));
    }

    public void add(int i, ToolAction toolAction) {
        if (i >= this.actions.size() || this.actions.size() == 0) {
            add(toolAction);
            return;
        }
        int size = 0;
        int i2 = 0;
        while (size < i) {
            size += this.groupedActions.get(i2).size();
            i2++;
        }
        this.actions.add(size, toolAction);
        this.groupedActions.add(i2, Collections.singletonList(toolAction));
    }

    public void add(List<ToolAction> list) {
        if (list.isEmpty()) {
            return;
        }
        this.actions.addAll(list);
        this.groupedActions.add(new ArrayList(list));
    }

    public int size() {
        return this.actions.size();
    }

    public int groups() {
        return this.groupedActions.size();
    }

    public int groupSize(int i) {
        if (i < 0 || i >= this.groupedActions.size()) {
            return 0;
        }
        List<ToolAction> list = this.groupedActions.get(i);
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (list.get(i3).isVisible()) {
                i2++;
            }
        }
        return i2;
    }

    public ToolAction get(int i) {
        return this.actions.get(i);
    }

    public ToolAction get(int i, int i2) {
        if (i >= 0 && i < this.groupedActions.size()) {
            List<ToolAction> list = this.groupedActions.get(i);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                if (list.get(i4).isVisible()) {
                    i3++;
                }
                if (i3 == i2 + 1) {
                    return list.get(i4);
                }
            }
        }
        return null;
    }

    public void clear() {
        this.actions.clear();
        this.groupedActions.clear();
    }
}
