package info.flowersoft.theotown.draft;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.components.transition.TaggedIntEnum;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class Transition {
    public boolean always;
    public Condition condition;
    public boolean doubleCheck;
    public boolean fixedProbability;
    public float probability;
    public static final String[] COMPARISON_OPS = {"<=", ">=", "==", "<", ">", C3522b4.j.b};
    public static final TaggedIntEnum conditionEnum = new TaggedIntEnum();
    public static final TaggedIntEnum actionEnum = new TaggedIntEnum();
    public static final int CONDITION_BUILDING = allocCondition("building");
    public static final int CONDITION_BUILDABLE = allocCondition("buildable");
    public static final int CONDITION_BUILDING_NEARBY = allocCondition("building nearby");
    public static final int CONDITION_WIRE = allocCondition("wire");
    public static final int CONDITION_ROAD = allocCondition("road");
    public static final int CONDITION_ROAD_DECORATION = allocCondition("road decoration");
    public static final int CONDITION_ROAD_OCCUPATION = allocCondition("road occupation");
    public static final int CONDITION_FENCE = allocCondition("fence");
    public static final int CONDITION_PIPE = allocCondition("pipe");
    public static final int CONDITION_TREE = allocCondition("tree");
    public static final int CONDITION_AND = allocCondition("and");
    public static final int CONDITION_OR = allocCondition("or");
    public static final int CONDITION_TRUE = allocCondition("true");
    public static final int CONDITION_FALSE = allocCondition("false");
    public static final int CONDITION_COUNT = allocCondition("count");
    public static final int CONDITION_NEARBY = allocCondition("nearby");
    public static final int CONDITION_LINE = allocCondition("line");
    public static final int CONDITION_RECT = allocCondition("rect");
    public static final int CONDITION_FRAME = allocCondition("frame");
    public static final int CONDITION_LAND = allocCondition("land");
    public static final int CONDITION_WATER = allocCondition("water");
    public static final int CONDITION_ROAD_USAGE = allocCondition("road usage");
    public static final int CONDITION_ZONE = allocCondition("zone");
    public static final int CONDITION_BUILDING_COUNT = allocCondition("building count");
    public static final int CONDITION_VALUE = allocCondition(C3522b4.i.X);
    public static final int CONDITION_BURNING = allocCondition("burning");
    public static final int CONDITION_UPGRADE = allocCondition("upgrade");
    public static final int CONDITION_DATE = allocCondition("date");
    public static final int CONDITION_GROUND = allocCondition("ground");
    public static final int CONDITION_SANDBOX = allocCondition("sandbox");
    public static final int CONDITION_EVENT = allocCondition("event");
    public static final int CONDITION_ROAD_COUNT = allocCondition("road count");
    public static final int CONDITION_MAP_SIZE = allocCondition("map size");
    public static final int CONDITION_PERFORMANCE = allocCondition("performance");
    public static final int CONDITION_INFLUENCE = allocCondition("influence");
    public static final int CONDITION_RND = allocCondition("rnd");
    public static final int CONDITION_ABANDONED = allocCondition("abandoned");
    public static final int CONDITION_RCI = allocCondition("rci");
    public static final int CONDITION_COMPARE = allocCondition("compare");
    public static final int CONDITION_VALID = allocCondition("valid");
    public static final int CONDITION_EDGE = allocCondition("edge");
    public static final int CONDITION_SELECT = allocCondition("select");
    public static final int CONDITION_ANIMATION_FRAME = allocCondition("animation frame");
    public static final int CONDITION_ANIMATION_RUNNING = allocCondition("animation running");
    public static final int CONDITION_CITY_NAME = allocCondition("city name");
    public static final int CONDITION_DISASTER = allocCondition("disaster");
    public static final int CONDITION_BURNABLE = allocCondition("burnable");
    public static final int CONDITION_DESTROYABLE = allocCondition("destroyable");
    public static final int CONDITION_DAYS_BUILT = allocCondition("days built");
    public static final int CONDITION_RANK = allocCondition("rank");
    public static final int CONDITION_CALL = allocCondition("call");
    public static final int ACTION_BUILD = allocAction("build");
    public static final int ACTION_REMOVE = allocAction("remove");
    public static final int ACTION_REMOVE_FENCE = allocAction("remove fence");
    public static final int ACTION_REMOVE_PIPE = allocAction("remove pipe");
    public static final int ACTION_REMOVE_ROAD_DECORATION = allocAction("remove road decoration");
    public static final int ACTION_REMOVE_ROAD_OCCUPATION = allocAction("remove road occupation");
    public static final int ACTION_FRAME = allocAction("frame");
    public static final int ACTION_BURN = allocAction("burn");
    public static final int ACTION_EXTINGUISH = allocAction("extinguish");
    public static final int ACTION_NOTIFY = allocAction("notify");
    public static final int ACTION_PLAY = allocAction("play");
    public static final int ACTION_DISASTER = allocAction("disaster");
    public static final int ACTION_TOAST = allocAction("toast");
    public static final int ACTION_FIREWORK = allocAction("firework");
    public static final int ACTION_MONEY = allocAction("money");
    public static final int ACTION_STAGE = allocAction(C3522b4.i.q);
    public static final int ACTION_SET = allocAction("set");
    public static final int ACTION_PERFORMANCE = allocAction("performance");
    public static final int ACTION_ACHIEVEMENT = allocAction("achievement");
    public static final int ACTION_OVERLAY = allocAction("overlay");
    public static final int ACTION_LINE = allocAction("line");
    public static final int ACTION_RECT = allocAction("rect");
    public static final int ACTION_RND = allocAction("rnd");
    public static final int ACTION_TRANSLATE = allocAction("translate");
    public static final int ACTION_WEBSITE = allocAction("website");
    public static final int ACTION_ABANDON = allocAction("abandon");
    public static final int ACTION_LANGUAGE = allocAction("language");
    public static final int ACTION_LOAD_CITY = allocAction("load city");
    public static final int ACTION_ANIMATION_RESUME = allocAction("animation resume");
    public static final int ACTION_ANIMATION_PAUSE = allocAction("animation pause");
    public static final int ACTION_ANALYTICS_EVENT = allocAction("analytics event");
    public static final int ACTION_FEEDBACK = allocAction("feedback");
    public static final int ACTION_ALTER_DRAFT = allocAction("alter draft");
    public static final int ACTION_CALL = allocAction("call");
    public List<Action> actions = new ArrayList();
    public List<Action> elseActions = new ArrayList();

    public static class Action {
        public String code;
        public Condition condition;
        public int frame;
        public long h;
        public String id;
        public boolean ignoreSuccess;
        public List<Action> innerActions;
        public boolean invert;
        public int level;
        public int type;
        public long w;
        public long x;
        public long x2;
        public long y;
        public long y2;
        public long z;
    }

    public static int allocCondition(String str) {
        return conditionEnum.allocate(str);
    }

    public static int allocAction(String str) {
        return actionEnum.allocate(str);
    }

    public static class Condition {
        public String code;
        public int frame;
        public long h;
        public String id;
        public List<Condition> innerConditions;
        public boolean invert;
        public int level;
        public long max;
        public long min;
        public int type;
        public long w;
        public long x;
        public long x2;
        public long y;
        public long y2;
        public long z;

        public boolean equals(Object obj) {
            if (obj instanceof Condition) {
                Condition condition = (Condition) obj;
                if (this.type == condition.type && Objects.equals(this.id, condition.id) && Objects.equals(this.code, condition.code) && this.x == condition.x && this.y == condition.y && this.w == condition.w && this.h == condition.h && this.z == condition.z && this.x2 == condition.x2 && this.y2 == condition.y2 && this.min == condition.min && this.max == condition.max && this.frame == condition.frame && this.level == condition.level && this.invert == condition.invert && Objects.equals(this.innerConditions, condition.innerConditions)) {
                    return true;
                }
            }
            return false;
        }
    }
}
