package info.flowersoft.theotown.city.objects;

import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: BuildingIcons.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BuildingIcons {
    public static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {new PropertyReference1Impl(BuildingIcons.class, "illness", "getIllness()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "noRoad", "getNoRoad()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "noEnergy", "getNoEnergy()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "noWater", "getNoWater()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "overloaded", "getOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "unhappy", "getUnhappy()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "waste", "getWaste()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "wasteOverloaded", "getWasteOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "deadBodies", "getDeadBodies()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "deadBodiesOverloaded", "getDeadBodiesOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "crimeGraffiti", "getCrimeGraffiti()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "crimeBurglary", "getCrimeBurglary()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "crimeMurder", "getCrimeMurder()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0), new PropertyReference1Impl(BuildingIcons.class, "crimeRiot", "getCrimeRiot()Linfo/flowersoft/theotown/draft/AnimationDraft;", 0)};
    public static final BuildingIcons INSTANCE;
    public static final DraftSlot crimeBurglary$delegate;
    public static final DraftSlot crimeGraffiti$delegate;
    public static final DraftSlot crimeMurder$delegate;
    public static final DraftSlot crimeRiot$delegate;
    public static final DraftSlot deadBodies$delegate;
    public static final DraftSlot deadBodiesOverloaded$delegate;
    public static final DraftSlot illness$delegate;
    public static final DraftSlot noEnergy$delegate;
    public static final DraftSlot noRoad$delegate;
    public static final DraftSlot noWater$delegate;
    public static final DraftSlot overloaded$delegate;
    public static final List<DraftSlot> slots;
    public static final DraftSlot unhappy$delegate;
    public static final DraftSlot waste$delegate;
    public static final DraftSlot wasteOverloaded$delegate;

    static {
        BuildingIcons buildingIcons = new BuildingIcons();
        INSTANCE = buildingIcons;
        slots = new ArrayList();
        illness$delegate = buildingIcons.resolve("$buildingicon_illness00");
        noRoad$delegate = buildingIcons.resolve("$buildingicon_noroad00");
        noEnergy$delegate = buildingIcons.resolve("$buildingicon_noenergy00");
        noWater$delegate = buildingIcons.resolve("$buildingicon_nowater00");
        overloaded$delegate = buildingIcons.resolve("$buildingicon_overloaded00");
        unhappy$delegate = buildingIcons.resolve("$buildingicon_unhappy00");
        waste$delegate = buildingIcons.resolve("$buildingicon_waste00");
        wasteOverloaded$delegate = buildingIcons.resolve("$buildingicon_wasteoverloaded00");
        deadBodies$delegate = buildingIcons.resolve("$buildingicon_deadbodies00");
        deadBodiesOverloaded$delegate = buildingIcons.resolve("$buildingicon_deadbodiesoverloaded00");
        crimeGraffiti$delegate = buildingIcons.resolve("$buildingicon_crimegraffiti00");
        crimeBurglary$delegate = buildingIcons.resolve("$buildingicon_crimeburglary00");
        crimeMurder$delegate = buildingIcons.resolve("$buildingicon_crimemurder00");
        crimeRiot$delegate = buildingIcons.resolve("$buildingicon_crimeriot00");
    }

    public final DraftSlot resolve(String str) {
        DraftSlot draftSlot = new DraftSlot(str, null);
        slots.add(draftSlot);
        return draftSlot;
    }

    public final AnimationDraft getIllness() {
        return illness$delegate.getValue(this, $$delegatedProperties[0]);
    }

    public final AnimationDraft getNoRoad() {
        return noRoad$delegate.getValue(this, $$delegatedProperties[1]);
    }

    public final AnimationDraft getNoEnergy() {
        return noEnergy$delegate.getValue(this, $$delegatedProperties[2]);
    }

    public final AnimationDraft getNoWater() {
        return noWater$delegate.getValue(this, $$delegatedProperties[3]);
    }

    public final AnimationDraft getOverloaded() {
        return overloaded$delegate.getValue(this, $$delegatedProperties[4]);
    }

    public final AnimationDraft getUnhappy() {
        return unhappy$delegate.getValue(this, $$delegatedProperties[5]);
    }

    public final AnimationDraft getWaste() {
        return waste$delegate.getValue(this, $$delegatedProperties[6]);
    }

    public final AnimationDraft getWasteOverloaded() {
        return wasteOverloaded$delegate.getValue(this, $$delegatedProperties[7]);
    }

    public final AnimationDraft getDeadBodies() {
        return deadBodies$delegate.getValue(this, $$delegatedProperties[8]);
    }

    public final AnimationDraft getDeadBodiesOverloaded() {
        return deadBodiesOverloaded$delegate.getValue(this, $$delegatedProperties[9]);
    }

    public final AnimationDraft getCrimeGraffiti() {
        return crimeGraffiti$delegate.getValue(this, $$delegatedProperties[10]);
    }

    public final AnimationDraft getCrimeBurglary() {
        return crimeBurglary$delegate.getValue(this, $$delegatedProperties[11]);
    }

    public final AnimationDraft getCrimeMurder() {
        return crimeMurder$delegate.getValue(this, $$delegatedProperties[12]);
    }

    public final AnimationDraft getCrimeRiot() {
        return crimeRiot$delegate.getValue(this, $$delegatedProperties[13]);
    }

    public final void dispose() {
        Iterator<T> it = slots.iterator();
        while (it.hasNext()) {
            ((DraftSlot) it.next()).reset();
        }
    }

    /* JADX INFO: compiled from: BuildingIcons.kt */
    public static final class DraftSlot {
        public AnimationDraft _draft;
        public final String id;

        public static /* synthetic */ DraftSlot copy$default(DraftSlot draftSlot, String str, AnimationDraft animationDraft, int i, Object obj) {
            if ((i & 1) != 0) {
                str = draftSlot.id;
            }
            if ((i & 2) != 0) {
                animationDraft = draftSlot._draft;
            }
            return draftSlot.copy(str, animationDraft);
        }

        public final String component1() {
            return this.id;
        }

        public final AnimationDraft component2() {
            return this._draft;
        }

        public final DraftSlot copy(String id, AnimationDraft animationDraft) {
            Intrinsics.checkNotNullParameter(id, "id");
            return new DraftSlot(id, animationDraft);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DraftSlot)) {
                return false;
            }
            DraftSlot draftSlot = (DraftSlot) obj;
            return Intrinsics.areEqual(this.id, draftSlot.id) && Intrinsics.areEqual(this._draft, draftSlot._draft);
        }

        public int hashCode() {
            int iHashCode = this.id.hashCode() * 31;
            AnimationDraft animationDraft = this._draft;
            return iHashCode + (animationDraft == null ? 0 : animationDraft.hashCode());
        }

        public String toString() {
            return "DraftSlot(id=" + this.id + ", _draft=" + this._draft + ')';
        }

        public DraftSlot(String id, AnimationDraft animationDraft) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.id = id;
            this._draft = animationDraft;
        }

        public final String getId() {
            return this.id;
        }

        public final AnimationDraft get_draft() {
            return this._draft;
        }

        public final void set_draft(AnimationDraft animationDraft) {
            this._draft = animationDraft;
        }

        public final AnimationDraft getDraft() {
            AnimationDraft animationDraft = this._draft;
            if (animationDraft != null) {
                return animationDraft;
            }
            AnimationDraft animationDraft2 = (AnimationDraft) Drafts.getOrThrow(this.id, AnimationDraft.class);
            this._draft = animationDraft2;
            Intrinsics.checkNotNullExpressionValue(animationDraft2, "let(...)");
            return animationDraft2;
        }

        public final void reset() {
            this._draft = null;
        }

        public final AnimationDraft getValue(Object target, KProperty<?> property) {
            Intrinsics.checkNotNullParameter(target, "target");
            Intrinsics.checkNotNullParameter(property, "property");
            return getDraft();
        }
    }
}
