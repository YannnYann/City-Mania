package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.util.SortedList;

/* JADX INFO: loaded from: classes4.dex */
public class CategoryDraft extends ViewportDraft {
    public SortedList<Draft> children = new SortedList<>(new SortedList.Interpreter<Draft>() { // from class: info.flowersoft.theotown.draft.CategoryDraft.1
        @Override // info.flowersoft.theotown.util.SortedList.Interpreter
        public int interprete(Draft draft) {
            return draft.ordinal;
        }
    });
    public KeyAction hotkey;

    public void addChild(Draft draft) {
        this.children.add(draft);
    }

    public void removeChild(Draft draft) {
        this.children.remove(draft);
    }
}
