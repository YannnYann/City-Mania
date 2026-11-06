package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.util.Getter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class CategoryDraftLoader extends DraftLoader {
    public static final Map<String, KeyAction> HOTKEYS;

    static {
        HashMap map = new HashMap();
        HOTKEYS = map;
        map.put("$cat_road00", KeyAction.OPEN_CATEGORY_ROAD);
        map.put("$cat_terrain00", KeyAction.OPEN_CATEGORY_TERRAIN);
        map.put("$cat_energy00", KeyAction.OPEN_CATEGORY_ENERGY);
        map.put("$cat_water00", KeyAction.OPEN_CATEGORY_WATER);
        map.put("$cat_education00", KeyAction.OPEN_CATEGORY_EDUCATION);
        map.put("$cat_park00", KeyAction.OPEN_CATEGORY_PARK);
        map.put("$cat_police00", KeyAction.OPEN_CATEGORY_POLICE);
        map.put("$cat_firebrigade00", KeyAction.OPEN_CATEGORY_FIREBRIGADE);
        map.put("$cat_roaddeco00", KeyAction.OPEN_CATEGORY_ROADDECO);
        map.put("$cat_medic00", KeyAction.OPEN_CATEGORY_MEDIC);
        map.put("$cat_sport00", KeyAction.OPEN_CATEGORY_SPORT);
        map.put("$cat_management00", KeyAction.OPEN_CATEGORY_MANAGEMENT);
        map.put("$cat_award00", KeyAction.OPEN_CATEGORY_AWARD);
        map.put("$cat_zone00", KeyAction.OPEN_CATEGORY_ZONE);
        map.put("$cat_disaster00", KeyAction.OPEN_CATEGORY_DISASTER);
        map.put("$cat_recent00", KeyAction.OPEN_CATEGORY_RECENT);
        map.put("$cat_hills00", KeyAction.OPEN_CATEGORY_HILLS);
        map.put("$cat_asphalt00", KeyAction.OPEN_CATEGORY_ASPHALT);
        map.put("$cat_tree00", KeyAction.OPEN_CATEGORY_TREE);
        map.put("$cat_military00", KeyAction.OPEN_CATEGORY_MILITARY);
        map.put("$cat_transport00", KeyAction.OPEN_CATEGORY_TRANSPORT);
        map.put("$cat_intersections00", KeyAction.OPEN_CATEGORY_INTERSECTIONS);
        map.put("$cat_bus00", KeyAction.OPEN_CATEGORY_BUS);
        map.put("$cat_train00", KeyAction.OPEN_CATEGORY_TRAIN);
        map.put("$cat_train00_parts00", KeyAction.OPEN_CATEGORY_TRAIN_PARTS);
        map.put("$cat_elevatedtrain00", KeyAction.OPEN_CATEGORY_ELEVATED_TRAIN);
        map.put("$cat_metro00", KeyAction.OPEN_CATEGORY_METRO);
        map.put("$cat_airport00", KeyAction.OPEN_CATEGORY_AIRPORT);
        map.put("$cat_supply00", KeyAction.OPEN_CATEGORY_SUPPLY);
        map.put("$cat_wastedisposal00", KeyAction.OPEN_CATEGORY_WASTE_DISPOSAL);
        map.put("$cat_bodydisposal00", KeyAction.OPEN_CATEGORY_FUNERAL);
        map.put("$cat_public00", KeyAction.OPEN_CATEGORY_PUBLIC);
        map.put("$cat_religion00", KeyAction.OPEN_CATEGORY_RELIGION);
        map.put("$cat_decoration00", KeyAction.OPEN_CATEGORY_DECORATION);
        map.put("$cat_fence00", KeyAction.OPEN_CATEGORY_FENCE);
        map.put("$category_christmas00", KeyAction.OPEN_CATEGORY_CHRISTMAS);
        map.put("$category_firework00", KeyAction.OPEN_CATEGORY_FIREWORK);
        map.put("$cat_service00", KeyAction.OPEN_CATEGORY_SERVICE);
        map.put("$cat_landmark00", KeyAction.OPEN_CATEGORY_LANDMARK);
        map.put("$cat_plugins00", KeyAction.OPEN_CATEGORY_PLUGINS);
        map.put("$cat_rci_parts00", KeyAction.OPEN_CATEGORY_RCI_BUILDINGS);
    }

    public KeyAction getCategoryHotkey(String str, KeyAction keyAction) {
        KeyAction keyAction2 = HOTKEYS.get(str);
        return keyAction2 != null ? keyAction2 : keyAction;
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"category"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public CategoryDraft load() throws JSONException {
        int[] iArr;
        CategoryDraft categoryDraft = (CategoryDraft) getDraft(this.src, CategoryDraft.class, new Getter() { // from class: info.flowersoft.theotown.draftloader.CategoryDraftLoader$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return new CategoryDraft();
            }
        });
        if (!this.src.has("category") && !this.src.has("category from")) {
            this.src.put("category", "$cat_root00");
        }
        loadDefaults(categoryDraft);
        categoryDraft.frames = loadFrames("frames", "frame", categoryDraft, categoryDraft.frames);
        CategoryDraft categoryDraft2 = (CategoryDraft) Drafts.get(categoryDraft.id, CategoryDraft.class);
        if (categoryDraft2 != null && categoryDraft2.category != null) {
            if (categoryDraft.frames == null) {
                categoryDraft.frames = categoryDraft2.frames;
            }
            Iterator<Draft> it = categoryDraft.children.iterator();
            while (it.hasNext()) {
                it.next().category = categoryDraft;
            }
            categoryDraft.children.addAll(categoryDraft2.children);
            categoryDraft2.children.remove(categoryDraft2);
        }
        categoryDraft.hotkey = getCategoryHotkey(categoryDraft.id, categoryDraft.hotkey);
        int[] iArr2 = categoryDraft.frames;
        if ((iArr2 == null || iArr2.length == 0) && ((iArr = categoryDraft.previewFrames) == null || iArr.length == 0)) {
            throw new PluginLoadingException(categoryDraft.id, "Category needs some frames!");
        }
        return categoryDraft;
    }
}
