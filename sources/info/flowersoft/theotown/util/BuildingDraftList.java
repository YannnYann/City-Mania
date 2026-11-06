package info.flowersoft.theotown.util;

import info.flowersoft.theotown.draft.BuildingDraft;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingDraftList extends AbstractList<BuildingDraft> {
    public final List<List<BuildingDraft>> drafts;

    public BuildingDraftList() {
        ArrayList arrayList = new ArrayList(3);
        this.drafts = arrayList;
        arrayList.add(new ArrayList());
        arrayList.add(new ArrayList());
        arrayList.add(new ArrayList());
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, BuildingDraft buildingDraft) {
        add(buildingDraft);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(BuildingDraft buildingDraft) {
        this.drafts.get(buildingDraft.level - 1).add(buildingDraft);
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.drafts.get(0).clear();
        this.drafts.get(1).clear();
        this.drafts.get(2).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.drafts.get(0).contains(obj) || this.drafts.get(1).contains(obj) || this.drafts.get(2).contains(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public BuildingDraft get(int i) {
        int i2 = 0;
        while (i >= this.drafts.get(i2).size() && i2 < 3) {
            i -= this.drafts.get(i2).size();
            i2++;
        }
        return this.drafts.get(i2).get(i);
    }

    public List<BuildingDraft> getForLevel(int i) {
        return this.drafts.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.drafts.get(0).isEmpty() && this.drafts.get(1).isEmpty() && this.drafts.get(2).isEmpty();
    }

    @Override // java.util.AbstractList, java.util.List
    public BuildingDraft remove(int i) {
        int i2 = 0;
        while (i >= this.drafts.get(i2).size() && i2 < 3) {
            i -= this.drafts.get(i2).size();
            i2++;
        }
        return this.drafts.get(i2).remove(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        return this.drafts.get(0).remove(obj) || this.drafts.get(1).remove(obj) || this.drafts.get(2).remove(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public BuildingDraft set(int i, BuildingDraft buildingDraft) {
        int i2 = 0;
        while (i >= this.drafts.get(i2).size() && i2 < 3) {
            i -= this.drafts.get(i2).size();
            i2++;
        }
        return this.drafts.get(i2).set(i, buildingDraft);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.drafts.get(0).size() + this.drafts.get(1).size() + this.drafts.get(2).size();
    }
}
