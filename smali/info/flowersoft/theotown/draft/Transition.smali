###### Class info.flowersoft.theotown.draft.Transition (info.flowersoft.theotown.draft.Transition)
.class public Linfo/flowersoft/theotown/draft/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/draft/Transition$Action;,
        Linfo/flowersoft/theotown/draft/Transition$Condition;
    }
.end annotation


# static fields
.field public static final ACTION_ABANDON:I

.field public static final ACTION_ACHIEVEMENT:I

.field public static final ACTION_ALTER_DRAFT:I

.field public static final ACTION_ANALYTICS_EVENT:I

.field public static final ACTION_ANIMATION_PAUSE:I

.field public static final ACTION_ANIMATION_RESUME:I

.field public static final ACTION_BUILD:I

.field public static final ACTION_BURN:I

.field public static final ACTION_CALL:I

.field public static final ACTION_DISASTER:I

.field public static final ACTION_EXTINGUISH:I

.field public static final ACTION_FEEDBACK:I

.field public static final ACTION_FIREWORK:I

.field public static final ACTION_FRAME:I

.field public static final ACTION_LANGUAGE:I

.field public static final ACTION_LINE:I

.field public static final ACTION_LOAD_CITY:I

.field public static final ACTION_MONEY:I

.field public static final ACTION_NOTIFY:I

.field public static final ACTION_OVERLAY:I

.field public static final ACTION_PERFORMANCE:I

.field public static final ACTION_PLAY:I

.field public static final ACTION_RECT:I

.field public static final ACTION_REMOVE:I

.field public static final ACTION_REMOVE_FENCE:I

.field public static final ACTION_REMOVE_PIPE:I

.field public static final ACTION_REMOVE_ROAD_DECORATION:I

.field public static final ACTION_REMOVE_ROAD_OCCUPATION:I

.field public static final ACTION_RND:I

.field public static final ACTION_SET:I

.field public static final ACTION_STAGE:I

.field public static final ACTION_TOAST:I

.field public static final ACTION_TRANSLATE:I

.field public static final ACTION_WEBSITE:I

.field public static final COMPARISON_OPS:[Ljava/lang/String;

.field public static final CONDITION_ABANDONED:I

.field public static final CONDITION_AND:I

.field public static final CONDITION_ANIMATION_FRAME:I

.field public static final CONDITION_ANIMATION_RUNNING:I

.field public static final CONDITION_BUILDABLE:I

.field public static final CONDITION_BUILDING:I

.field public static final CONDITION_BUILDING_COUNT:I

.field public static final CONDITION_BUILDING_NEARBY:I

.field public static final CONDITION_BURNABLE:I

.field public static final CONDITION_BURNING:I

.field public static final CONDITION_CALL:I

.field public static final CONDITION_CITY_NAME:I

.field public static final CONDITION_COMPARE:I

.field public static final CONDITION_COUNT:I

.field public static final CONDITION_DATE:I

.field public static final CONDITION_DAYS_BUILT:I

.field public static final CONDITION_DESTROYABLE:I

.field public static final CONDITION_DISASTER:I

.field public static final CONDITION_EDGE:I

.field public static final CONDITION_EVENT:I

.field public static final CONDITION_FALSE:I

.field public static final CONDITION_FENCE:I

.field public static final CONDITION_FRAME:I

.field public static final CONDITION_GROUND:I

.field public static final CONDITION_INFLUENCE:I

.field public static final CONDITION_LAND:I

.field public static final CONDITION_LINE:I

.field public static final CONDITION_MAP_SIZE:I

.field public static final CONDITION_NEARBY:I

.field public static final CONDITION_OR:I

.field public static final CONDITION_PERFORMANCE:I

.field public static final CONDITION_PIPE:I

.field public static final CONDITION_RANK:I

.field public static final CONDITION_RCI:I

.field public static final CONDITION_RECT:I

.field public static final CONDITION_RND:I

.field public static final CONDITION_ROAD:I

.field public static final CONDITION_ROAD_COUNT:I

.field public static final CONDITION_ROAD_DECORATION:I

.field public static final CONDITION_ROAD_OCCUPATION:I

.field public static final CONDITION_ROAD_USAGE:I

.field public static final CONDITION_SANDBOX:I

.field public static final CONDITION_SELECT:I

.field public static final CONDITION_TREE:I

.field public static final CONDITION_TRUE:I

.field public static final CONDITION_UPGRADE:I

.field public static final CONDITION_VALID:I

.field public static final CONDITION_VALUE:I

.field public static final CONDITION_WATER:I

.field public static final CONDITION_WIRE:I

.field public static final CONDITION_ZONE:I

.field public static final actionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

.field public static final conditionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition$Action;",
            ">;"
        }
    .end annotation
.end field

.field public always:Z

.field public condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

.field public doubleCheck:Z

.field public elseActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition$Action;",
            ">;"
        }
    .end annotation
.end field

.field public fixedProbability:Z

.field public probability:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 21
    const-string v4, ">"

    const-string v5, "="

    const-string v0, "<="

    const-string v1, ">="

    const-string v2, "=="

    const-string v3, "<"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draft/Transition;->COMPARISON_OPS:[Ljava/lang/String;

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draft/Transition;->conditionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draft/Transition;->actionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    .line 33
    const-string v0, "building"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDING:I

    .line 34
    const-string v0, "buildable"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDABLE:I

    .line 35
    const-string v0, "building nearby"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDING_NEARBY:I

    .line 36
    const-string v0, "wire"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_WIRE:I

    .line 37
    const-string v0, "road"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD:I

    .line 38
    const-string v0, "road decoration"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_DECORATION:I

    .line 39
    const-string v0, "road occupation"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_OCCUPATION:I

    .line 40
    const-string v0, "fence"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_FENCE:I

    .line 41
    const-string v0, "pipe"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_PIPE:I

    .line 42
    const-string v0, "tree"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_TREE:I

    .line 43
    const-string v0, "and"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_AND:I

    .line 44
    const-string v0, "or"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_OR:I

    .line 45
    const-string v0, "true"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_TRUE:I

    .line 46
    const-string v0, "false"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_FALSE:I

    .line 47
    const-string v0, "count"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_COUNT:I

    .line 48
    const-string v0, "nearby"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_NEARBY:I

    .line 49
    const-string v0, "line"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_LINE:I

    .line 50
    const-string v1, "rect"

    invoke-static {v1}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RECT:I

    .line 51
    const-string v2, "frame"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_FRAME:I

    .line 52
    const-string v3, "land"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_LAND:I

    .line 53
    const-string v3, "water"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_WATER:I

    .line 54
    const-string v3, "road usage"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_USAGE:I

    .line 55
    const-string v3, "zone"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ZONE:I

    .line 56
    const-string v3, "building count"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDING_COUNT:I

    .line 57
    const-string v3, "value"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_VALUE:I

    .line 58
    const-string v3, "burning"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BURNING:I

    .line 59
    const-string v3, "upgrade"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_UPGRADE:I

    .line 60
    const-string v3, "date"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DATE:I

    .line 61
    const-string v3, "ground"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_GROUND:I

    .line 62
    const-string v3, "sandbox"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_SANDBOX:I

    .line 63
    const-string v3, "event"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_EVENT:I

    .line 64
    const-string v3, "road count"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_COUNT:I

    .line 65
    const-string v3, "map size"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_MAP_SIZE:I

    .line 66
    const-string v3, "performance"

    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v4

    sput v4, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_PERFORMANCE:I

    .line 67
    const-string v4, "influence"

    invoke-static {v4}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v4

    sput v4, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_INFLUENCE:I

    .line 68
    const-string v4, "rnd"

    invoke-static {v4}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RND:I

    .line 69
    const-string v5, "abandoned"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ABANDONED:I

    .line 70
    const-string v5, "rci"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RCI:I

    .line 71
    const-string v5, "compare"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_COMPARE:I

    .line 72
    const-string v5, "valid"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_VALID:I

    .line 73
    const-string v5, "edge"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_EDGE:I

    .line 74
    const-string v5, "select"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_SELECT:I

    .line 75
    const-string v5, "animation frame"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ANIMATION_FRAME:I

    .line 76
    const-string v5, "animation running"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ANIMATION_RUNNING:I

    .line 77
    const-string v5, "city name"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_CITY_NAME:I

    .line 78
    const-string v5, "disaster"

    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v6

    sput v6, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DISASTER:I

    .line 79
    const-string v6, "burnable"

    invoke-static {v6}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v6

    sput v6, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BURNABLE:I

    .line 80
    const-string v6, "destroyable"

    invoke-static {v6}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v6

    sput v6, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DESTROYABLE:I

    .line 81
    const-string v6, "days built"

    invoke-static {v6}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v6

    sput v6, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DAYS_BUILT:I

    .line 82
    const-string v6, "rank"

    invoke-static {v6}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v6

    sput v6, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RANK:I

    .line 83
    const-string v6, "call"

    invoke-static {v6}, Linfo/flowersoft/theotown/draft/Transition;->allocCondition(Ljava/lang/String;)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_CALL:I

    .line 85
    const-string v7, "build"

    invoke-static {v7}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/draft/Transition;->ACTION_BUILD:I

    .line 86
    const-string v7, "remove"

    invoke-static {v7}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE:I

    .line 87
    const-string v7, "remove fence"

    invoke-static {v7}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_FENCE:I

    .line 88
    const-string v7, "remove pipe"

    invoke-static {v7}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_PIPE:I

    .line 89
    const-string v7, "remove road decoration"

    invoke-static {v7}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_ROAD_DECORATION:I

    .line 90
    const-string v7, "remove road occupation"

    invoke-static {v7}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_ROAD_OCCUPATION:I

    .line 91
    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_FRAME:I

    .line 92
    const-string v2, "burn"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_BURN:I

    .line 93
    const-string v2, "extinguish"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_EXTINGUISH:I

    .line 94
    const-string v2, "notify"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_NOTIFY:I

    .line 95
    const-string v2, "play"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_PLAY:I

    .line 96
    invoke-static {v5}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_DISASTER:I

    .line 97
    const-string v2, "toast"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_TOAST:I

    .line 98
    const-string v2, "firework"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_FIREWORK:I

    .line 99
    const-string v2, "money"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_MONEY:I

    .line 100
    const-string v2, "stage"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_STAGE:I

    .line 101
    const-string v2, "set"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_SET:I

    .line 102
    invoke-static {v3}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_PERFORMANCE:I

    .line 103
    const-string v2, "achievement"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ACHIEVEMENT:I

    .line 104
    const-string v2, "overlay"

    invoke-static {v2}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_OVERLAY:I

    .line 105
    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_LINE:I

    .line 106
    invoke-static {v1}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_RECT:I

    .line 107
    invoke-static {v4}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_RND:I

    .line 108
    const-string v0, "translate"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_TRANSLATE:I

    .line 109
    const-string v0, "website"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_WEBSITE:I

    .line 110
    const-string v0, "abandon"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ABANDON:I

    .line 111
    const-string v0, "language"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_LANGUAGE:I

    .line 112
    const-string v0, "load city"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_LOAD_CITY:I

    .line 113
    const-string v0, "animation resume"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ANIMATION_RESUME:I

    .line 114
    const-string v0, "animation pause"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ANIMATION_PAUSE:I

    .line 115
    const-string v0, "analytics event"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ANALYTICS_EVENT:I

    .line 116
    const-string v0, "feedback"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_FEEDBACK:I

    .line 117
    const-string v0, "alter draft"

    invoke-static {v0}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ALTER_DRAFT:I

    .line 118
    invoke-static {v6}, Linfo/flowersoft/theotown/draft/Transition;->allocAction(Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_CALL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Transition;->actions:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/Transition;->elseActions:Ljava/util/List;

    return-void
.end method

.method public static allocAction(Ljava/lang/String;)I
    .registers 2

    .line 30
    sget-object v0, Linfo/flowersoft/theotown/draft/Transition;->actionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;->allocate(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static allocCondition(Ljava/lang/String;)I
    .registers 2

    .line 25
    sget-object v0, Linfo/flowersoft/theotown/draft/Transition;->conditionEnum:Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/components/transition/TaggedIntEnum;->allocate(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

###### Class info.flowersoft.theotown.draft.Transition.Action (info.flowersoft.theotown.draft.Transition$Action)
.class public Linfo/flowersoft/theotown/draft/Transition$Action;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

.field public frame:I

.field public h:J

.field public id:Ljava/lang/String;

.field public ignoreSuccess:Z

.field public innerActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition$Action;",
            ">;"
        }
    .end annotation
.end field

.field public invert:Z

.field public level:I

.field public type:I

.field public w:J

.field public x:J

.field public x2:J

.field public y:J

.field public y2:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draft.Transition.Condition (info.flowersoft.theotown.draft.Transition$Condition)
.class public Linfo/flowersoft/theotown/draft/Transition$Condition;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public frame:I

.field public h:J

.field public id:Ljava/lang/String;

.field public innerConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition$Condition;",
            ">;"
        }
    .end annotation
.end field

.field public invert:Z

.field public level:I

.field public max:J

.field public min:J

.field public type:I

.field public w:J

.field public x:J

.field public x2:J

.field public y:J

.field public y2:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 155
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    .line 156
    check-cast p1, Linfo/flowersoft/theotown/draft/Transition$Condition;

    .line 157
    iget v0, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->type:I

    iget v2, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->type:I

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    .line 158
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    .line 159
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->x:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->x:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->y:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->y:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->w:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->w:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->h:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->h:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->z:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->z:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->x2:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->x2:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->y2:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->y2:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->min:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->min:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget-wide v2, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->max:J

    iget-wide v4, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->max:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_87

    iget v0, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    iget v2, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    if-ne v0, v2, :cond_87

    iget v0, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->level:I

    iget v2, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->level:I

    if-ne v0, v2, :cond_87

    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->invert:Z

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->invert:Z

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    .line 172
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    const/4 p1, 0x1

    return p1

    :cond_87
    return v1
.end method
