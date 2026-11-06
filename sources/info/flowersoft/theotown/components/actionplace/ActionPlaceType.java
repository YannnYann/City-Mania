package info.flowersoft.theotown.components.actionplace;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.IntEnum;

/* JADX INFO: loaded from: classes4.dex */
public final class ActionPlaceType extends IntEnum {
    public static final int FIRE = IntEnum.allocate();
    public static final int POLICE = IntEnum.allocate();
    public static final int MEDIC = IntEnum.allocate();
    public static final int SWAT = IntEnum.allocate();
    public static final int GARBAGE = IntEnum.allocate();
    public static final int COUNT = IntEnum.getAndResetCount();
    public static final int[] frame = {Resources.FRAME_LOCATE_FIRE_ALERT, Resources.FRAME_LOCATE_POLICE_ALERT, Resources.FRAME_LOCATE_MEDIC_ALERT, Resources.FRAME_LOCATE_SWAT_ALERT, Resources.FRAME_LOCATE_GARBAGE_ALERT};
}
