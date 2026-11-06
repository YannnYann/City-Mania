package info.flowersoft.theotown.draftloader;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.SpawnDefinition;
import info.flowersoft.theotown.draft.SpawnInBiomeDefinition;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public class BiomeDraftLoader extends DraftLoader {

    public interface SpawnDefinitionApplier<T extends Draft> {
        void apply(T t, SpawnInBiomeDefinition spawnInBiomeDefinition);
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"biome"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public Draft load() throws MissingDraftException, JSONException {
        BiomeDraft biomeDraft = (BiomeDraft) getDraft(this.src, BiomeDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new BiomeDraft();
            }
        });
        loadDefaults(biomeDraft);
        biomeDraft.isWater = this.src.optBoolean("water", biomeDraft.isWater);
        biomeDraft.spawnable = this.src.optBoolean("spawnable", biomeDraft.spawnable);
        loadSpawnDefinition(this.src, biomeDraft.spawnDefinition);
        loadForeignInBiomeSpawn(this.src, biomeDraft, "ground", "grounds", new BiomeDraftLoader$$ExternalSyntheticLambda1(), "ground", GroundDraft.class, new SpawnDefinitionApplier() { // from class: info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.draftloader.BiomeDraftLoader.SpawnDefinitionApplier
            public final void apply(Draft draft, SpawnInBiomeDefinition spawnInBiomeDefinition) {
                ((GroundDraft) draft).addBiome(spawnInBiomeDefinition);
            }
        });
        loadForeignInBiomeSpawn(this.src, biomeDraft, "tree", "trees", new BiomeDraftLoader$$ExternalSyntheticLambda3(), "tree", TreeDraft.class, new SpawnDefinitionApplier() { // from class: info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda4
            @Override // info.flowersoft.theotown.draftloader.BiomeDraftLoader.SpawnDefinitionApplier
            public final void apply(Draft draft, SpawnInBiomeDefinition spawnInBiomeDefinition) {
                ((TreeDraft) draft).addBiome(spawnInBiomeDefinition);
            }
        });
        loadForeignInBiomeSpawn(this.src, biomeDraft, "building", "buildings", new BiomeDraftLoader$$ExternalSyntheticLambda1(), "building", BuildingDraft.class, new SpawnDefinitionApplier() { // from class: info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda5
            @Override // info.flowersoft.theotown.draftloader.BiomeDraftLoader.SpawnDefinitionApplier
            public final void apply(Draft draft, SpawnInBiomeDefinition spawnInBiomeDefinition) {
                ((BuildingDraft) draft).addBiome(spawnInBiomeDefinition);
            }
        });
        BiomeDraft biomeDraft2 = (BiomeDraft) Drafts.get(biomeDraft.id, BiomeDraft.class);
        if (biomeDraft2 != null) {
            Drafts.BIOMES.remove(biomeDraft2);
        }
        Drafts.BIOMES.add(biomeDraft);
        return biomeDraft;
    }

    public <T extends Draft> void loadForeignInBiomeSpawn(JSONObject jSONObject, BiomeDraft biomeDraft, String str, String str2, Getter<SpawnDefinition> getter, String str3, Class<T> cls, SpawnDefinitionApplier<T> spawnDefinitionApplier) throws MissingDraftException, JSONException {
        String str4;
        JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(jSONObject, str);
        if (jSONArrayOptArrayOrSingle == null) {
            jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(jSONObject, str2);
        }
        if (jSONArrayOptArrayOrSingle == null || jSONArrayOptArrayOrSingle.length() == 0) {
            return;
        }
        for (int i = 0; i < jSONArrayOptArrayOrSingle.length(); i++) {
            Object obj = jSONArrayOptArrayOrSingle.get(i);
            SpawnInBiomeDefinition spawnInBiomeDefinition = new SpawnInBiomeDefinition();
            spawnInBiomeDefinition.biome = biomeDraft;
            if (obj instanceof String) {
                str4 = (String) obj;
                spawnInBiomeDefinition.spawnDefinition = getter.get();
            } else {
                JSONObject jSONObject2 = jSONArrayOptArrayOrSingle.getJSONObject(i);
                String string = jSONObject2.getString(jSONObject2.has(str3) ? str3 : C3670j8.x);
                SpawnDefinition spawnDefinition = new SpawnDefinition();
                spawnInBiomeDefinition.spawnDefinition = spawnDefinition;
                loadSpawnDefinition(jSONObject2, spawnDefinition);
                str4 = string;
            }
            spawnDefinitionApplier.apply(Drafts.get(str4, cls), spawnInBiomeDefinition);
        }
    }
}
