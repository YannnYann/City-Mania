package info.flowersoft.theotown.components;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Requirement;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.requirement.DraftRequirement;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultRequirement extends Requirement {
    public final int MIN_RANK_DELAY_DAYS;
    public final Queue<Draft> lastUnlocked;
    public final List<Draft> lockedDrafts;
    public RankDraft newRank;
    public final JSONObject rankConfig;
    public final List<Draft> unlockedDrafts;

    public DefaultRequirement() {
        JSONObject specificConfig = Resources.getSpecificConfig("rank");
        this.rankConfig = specificConfig;
        this.MIN_RANK_DELAY_DAYS = specificConfig.optInt("min delay days", 30);
        this.lockedDrafts = new ArrayList();
        this.unlockedDrafts = new ArrayList();
        this.lastUnlocked = new ArrayDeque();
        for (Draft draft : Drafts.ALL.values()) {
            if (draft.hasRequirement()) {
                this.lockedDrafts.add(draft);
                draft.setUnlocked(false);
            } else {
                draft.setUnlocked(true);
            }
        }
    }

    public DefaultRequirement(JsonReader jsonReader) throws IOException {
        this();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("unlocked drafts")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    String strNextString = jsonReader.nextString();
                    if (Drafts.ALL.containsKey(strNextString)) {
                        Draft draft = Drafts.ALL.get(strNextString);
                        if (draft.hasRequirement()) {
                            draft.setUnlocked(true);
                            this.lockedDrafts.remove(draft);
                            this.unlockedDrafts.add(draft);
                        }
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("unlocked drafts");
        jsonWriter.beginArray();
        for (int i = 0; i < this.unlockedDrafts.size(); i++) {
            jsonWriter.value(this.unlockedDrafts.get(i).id);
        }
        jsonWriter.endArray();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void prepare() {
        super.prepare();
        nextDay();
    }

    public boolean checkUpgrade(UpgradeDraft upgradeDraft, Object obj) {
        DraftRequirement requirement = upgradeDraft.getRequirement();
        return requirement == null || requirement.isFulfilled(this.city, obj);
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        super.nextDay();
        Settings.maxRank = Math.max(this.city.getRank().ordinal, Settings.maxRank);
        Iterator<Draft> it = this.lockedDrafts.iterator();
        while (it.hasNext()) {
            Draft next = it.next();
            DraftRequirement requirement = next.getRequirement();
            if (requirement.isFulfilled(this.city, null)) {
                it.remove();
                this.unlockedDrafts.add(next);
                next.setUnlocked(true);
                if (!requirement.isFulfilledBecauseOfSandMode(this.city)) {
                    this.lastUnlocked.add(next);
                }
            }
        }
        for (Draft draft : this.unlockedDrafts) {
            draft.setUnlocked(draft.getRequirement().isFulfilled(this.city, null));
        }
        getNewRank();
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public boolean hasNewUnlockedDraft() {
        return !this.lastUnlocked.isEmpty();
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public Draft getNewUnlockedDraft() {
        if (this.lastUnlocked.isEmpty()) {
            throw new IllegalStateException("No new unlocked draft!");
        }
        return this.lastUnlocked.poll();
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public void flushUnlocked() {
        this.lastUnlocked.clear();
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public boolean hasNewRank() {
        return this.newRank != null && this.city.getRank().ordinal < this.newRank.ordinal;
    }

    @Override // info.flowersoft.theotown.city.components.Requirement
    public RankDraft getNewRank() {
        if (this.city.getGameMode().hasInfinityMoney()) {
            return this.city.getRank();
        }
        int iMax = Math.max(this.city.getRank().xp.get(), ((DefaultPeople) this.city.getComponent(9)).getPeople());
        City city = this.city;
        city.setTargetXp(Math.max(city.getTargetXp(), iMax));
        long absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        RankDraft rank = this.city.getRank();
        int iIndexOf = Drafts.RANKS.indexOf(rank);
        if (iIndexOf >= 0 && iIndexOf + 1 < Drafts.RANKS.size()) {
            List<RankDraft> list = Drafts.RANKS;
            RankDraft rankDraft = list.get(list.indexOf(rank) + 1);
            int i = rank.xp.get();
            int i2 = rankDraft.xp.get();
            long rankUpgradeAbsDay = this.city.getRankUpgradeAbsDay();
            int iCeil = ((int) Math.ceil(((absoluteDay - rankUpgradeAbsDay) / ((((long) this.MIN_RANK_DELAY_DAYS) + rankUpgradeAbsDay) - rankUpgradeAbsDay)) * (i2 - i))) + i;
            City city2 = this.city;
            city2.setCurrentXp(Math.min(city2.getTargetXp(), iCeil));
        } else {
            City city3 = this.city;
            city3.setCurrentXp(city3.getTargetXp());
        }
        int currentXp = this.city.getCurrentXp();
        if (this.newRank == null) {
            this.newRank = this.city.getRank();
        }
        for (int i3 = this.newRank.ordinal + 1; i3 < Drafts.RANKS.size(); i3++) {
            RankDraft rankDraft2 = Drafts.RANKS.get(i3);
            if (currentXp < rankDraft2.xp.get()) {
                break;
            }
            this.newRank = rankDraft2;
        }
        return this.newRank;
    }

    public void setNewRank(RankDraft rankDraft) {
        this.newRank = rankDraft;
    }
}
