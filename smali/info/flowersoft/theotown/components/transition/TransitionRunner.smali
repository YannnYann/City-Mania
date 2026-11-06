###### Class info.flowersoft.theotown.components.transition.TransitionRunner (info.flowersoft.theotown.components.transition.TransitionRunner)
.class public Linfo/flowersoft/theotown/components/transition/TransitionRunner;
.super Ljava/lang/Object;
.source "TransitionRunner.java"


# static fields
.field public static final STRING_INTERPOLATION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

.field public final finalActionResults:Lio/blueflower/stapel2d/util/IntList;

.field public final finalActionSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvm2/LuaValue;",
            ">;"
        }
    .end annotation
.end field

.field public final finalActionSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final finalTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public lastFeedback:Ljava/lang/String;

.field public final m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

.field public final people:Linfo/flowersoft/theotown/components/DefaultPeople;

.field public final selectedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

.field public final selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public virtualVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final visitedAmount:Lcom/badlogic/gdx/utils/IntIntMap;


# direct methods
.method public static synthetic $r8$lambda$RsGuIHUit4CUqTSpI0SKpCZ2vAo(JJ)[F
    .registers 4

    long-to-float p0, p0

    long-to-float p1, p2

    const/4 p2, 0x2

    .line 1151
    new-array p2, p2, [F

    const/4 p3, 0x0

    aput p0, p2, p3

    const/4 p0, 0x1

    aput p1, p2, p0

    return-object p2
.end method

.method public static synthetic $r8$lambda$h6lPxkIwD6tVYHnzkjJZ-elH0Tw(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 0
    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 93
    const-string v0, "\\$\\{([^\\}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->STRING_INTERPOLATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSources:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSenders:Ljava/util/List;

    .line 108
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    .line 109
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionResults:Lio/blueflower/stapel2d/util/IntList;

    .line 113
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selectedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 114
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->visitedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    .line 120
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/16 v0, 0x9

    .line 123
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPeople;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    const/4 v0, 0x3

    .line 124
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/transition/TransitionRunner;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 91
    iget-object p0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static isGlobalVar(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    .line 1634
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x21

    if-ne p0, v1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v0
.end method

.method public static isInterpolatedString(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1a

    .line 1450
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;JJJJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lvm2/LuaValue;",
            "Z)Z"
        }
    .end annotation

    .line 164
    invoke-virtual/range {p0 .. p14}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->collectTransitions(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    move-result p1

    return p1
.end method

.method public accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lvm2/LuaValue;",
            "Z)Z"
        }
    .end annotation

    .line 154
    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v0

    int-to-long v9, v0

    const/high16 v11, -0x80000000

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-virtual/range {v1 .. v15}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    move-result v0

    return v0
.end method

.method public accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Lvm2/LuaValue;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            "Ljava/lang/String;",
            "Lvm2/LuaValue;",
            "Z)Z"
        }
    .end annotation

    .line 149
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    move-result p1

    return p1
.end method

.method public accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;Ljava/lang/String;Lvm2/LuaValue;Z)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            "Ljava/lang/String;",
            "Lvm2/LuaValue;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 159
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    int-to-long v4, v1

    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    int-to-long v6, v1

    iget v12, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const-string v13, ""

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    invoke-virtual/range {v2 .. v16}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    move-result v0

    return v0
.end method

.method public acceptRandom(Ljava/util/List;Ljava/lang/String;Lvm2/LuaValue;Z)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;",
            "Ljava/lang/String;",
            "Lvm2/LuaValue;",
            "Z)Z"
        }
    .end annotation

    .line 142
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 143
    iget-object v3, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v2, v2

    int-to-long v4, v1

    const/high16 v10, -0x80000000

    .line 144
    const-string v11, ""

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    move-result v1

    return v1
.end method

.method public applyValue(Ljava/lang/String;J)V
    .registers 5

    .line 1621
    invoke-static {p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->isGlobalVar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1622
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->set(Ljava/lang/String;J)V

    return-void

    .line 1624
    :cond_e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->getVirtualVariables()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Property;

    if-eqz v0, :cond_22

    .line 1626
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 1628
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z
    .registers 52

    move-object/from16 v14, p1

    const/4 v4, 0x1

    if-nez v14, :cond_6

    return v4

    .line 299
    :cond_6
    :try_start_6
    iget-wide v5, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->x:J

    add-long v5, p2, v5

    .line 300
    iget-wide v7, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->y:J

    add-long v7, p4, v7

    .line 301
    iget-wide v9, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->w:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_19

    :goto_16
    move-wide/from16 p2, v11

    goto :goto_1c

    :cond_19
    move-wide/from16 v9, p6

    goto :goto_16

    .line 302
    :goto_1c
    iget-wide v11, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->h:J

    cmp-long v13, v11, p2

    if-eqz v13, :cond_23

    goto :goto_25

    :cond_23
    move-wide/from16 v11, p8

    .line 303
    :goto_25
    iget-wide v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->x2:J

    .line 304
    iget-wide v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->y2:J

    move/from16 v18, v4

    long-to-int v4, v5

    long-to-int v13, v7

    const/16 v19, 0x2

    long-to-int v15, v2

    move-wide/from16 p5, v2

    long-to-int v2, v0

    .line 307
    invoke-static {v15, v2}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v15

    .line 308
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long v20, v0, v2

    .line 309
    iget v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->level:I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_49} :catch_c39

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_52

    :goto_4d
    move-wide/from16 p5, v2

    const/16 v2, 0x10

    goto :goto_55

    :cond_52
    move/from16 v0, p10

    goto :goto_4d

    .line 310
    :goto_55
    :try_start_55
    new-array v3, v2, [I

    fill-array-data v3, :array_c56
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_c46

    cmp-long v2, v9, p5

    if-nez v2, :cond_67

    cmp-long v2, v11, p5

    if-eqz v2, :cond_63

    goto :goto_67

    :cond_63
    move-wide/from16 v22, v5

    :goto_65
    move-object v1, v3

    goto :goto_ab

    .line 312
    :cond_67
    :goto_67
    :try_start_67
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_c39

    move-object/from16 p8, v2

    const/4 v3, -0x1

    :goto_6f
    int-to-long v1, v3

    cmp-long v1, v1, v11

    if-gtz v1, :cond_a2

    move-wide/from16 v22, v5

    const/4 v2, -0x1

    :goto_77
    int-to-long v5, v2

    cmp-long v5, v5, v9

    if-gtz v5, :cond_9b

    if-ltz v2, :cond_84

    if-ltz v3, :cond_84

    if-gez v5, :cond_84

    if-ltz v1, :cond_87

    :cond_84
    move-object/from16 v5, p8

    goto :goto_8a

    :cond_87
    move-object/from16 v5, p8

    goto :goto_90

    .line 316
    :goto_8a
    :try_start_8a
    invoke-virtual {v5, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 317
    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_95

    :goto_90
    add-int/lit8 v2, v2, 0x1

    move-object/from16 p8, v5

    goto :goto_77

    :catch_95
    move-exception v0

    :goto_96
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_c4a

    :cond_9b
    move-object/from16 v5, p8

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v22

    goto :goto_6f

    :cond_a2
    move-wide/from16 v22, v5

    move-object/from16 v5, p8

    .line 321
    :try_start_a6
    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntList;->toArray()[I

    move-result-object v3

    goto :goto_65

    .line 323
    :goto_ab
    iget-wide v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->min:J

    iget-wide v5, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->z:J

    add-long/2addr v2, v5

    move-wide/from16 p8, v2

    .line 324
    iget-wide v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->max:J
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b4} :catch_c39

    add-long/2addr v2, v5

    move-object/from16 v5, p0

    .line 327
    :try_start_b7
    iget-object v6, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v13}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bd} :catch_c43

    const/16 v24, 0x0

    if-eqz v6, :cond_cf

    .line 328
    :try_start_c1
    iget-object v6, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v6
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c7} :catch_ca

    :goto_c7
    move-wide/from16 v25, v2

    goto :goto_d2

    :catch_ca
    move-exception v0

    move-object v1, v5

    :goto_cc
    const/4 v2, 0x0

    goto/16 :goto_c4a

    :cond_cf
    move-object/from16 v6, v24

    goto :goto_c7

    .line 331
    :goto_d2
    :try_start_d2
    iget v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->type:I

    .line 332
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDING:I
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d6} :catch_c43

    if-ne v2, v3, :cond_11b

    if-eqz v6, :cond_116

    .line 334
    :try_start_da
    iget-object v0, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_112

    .line 335
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v1, :cond_f2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    :cond_f2
    iget v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ff

    .line 336
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v1

    iget v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    if-ne v1, v2, :cond_112

    :cond_ff
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-eqz v1, :cond_10f

    .line 337
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_10d} :catch_ca

    if-eqz v0, :cond_112

    :cond_10f
    :goto_10f
    move/from16 v2, v18

    goto :goto_113

    :cond_112
    const/4 v2, 0x0

    :cond_113
    :goto_113
    move-object v1, v5

    goto/16 :goto_c51

    :cond_116
    move-object v1, v5

    :cond_117
    :goto_117
    const/16 v22, 0x0

    goto/16 :goto_b7c

    .line 340
    :cond_11b
    :try_start_11b
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDABLE:I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11d} :catch_c43

    if-ne v2, v3, :cond_1ab

    .line 341
    :try_start_11f
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/Draft;

    .line 342
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v1, :cond_136

    .line 343
    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 344
    iget-object v1, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, v0, v4, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v2

    goto :goto_113

    .line 345
    :cond_136
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v1, :cond_158

    .line 346
    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 347
    iget-object v1, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v1

    move-object/from16 v3, p12

    .line 348
    invoke-virtual {v1, v0, v3}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    add-long v2, v22, v9

    sub-long v2, v2, p5

    long-to-int v0, v2

    add-long/2addr v7, v11

    sub-long v7, v7, p5

    long-to-int v2, v7

    .line 349
    invoke-virtual {v1, v4, v13, v0, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 350
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    goto :goto_113

    .line 351
    :cond_158
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;

    if-eqz v1, :cond_165

    .line 352
    check-cast v0, Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 353
    iget-object v1, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, v0, v4, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v2

    goto :goto_113

    .line 354
    :cond_165
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v1, :cond_172

    .line 355
    check-cast v0, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 356
    iget-object v1, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, v0, v4, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v2

    goto :goto_113

    .line 357
    :cond_172
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v1, :cond_181

    .line 358
    check-cast v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 359
    iget-object v1, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {v1, v0, v4, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v2

    goto :goto_113

    .line 360
    :cond_181
    instance-of v1, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v1, :cond_112

    .line 361
    check-cast v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v6, :cond_112

    .line 363
    iget-object v1, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_112

    .line 365
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v2

    if-nez v2, :cond_112

    .line 366
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 367
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v0
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_1a7} :catch_ca

    if-nez v0, :cond_112

    goto/16 :goto_10f

    .line 372
    :cond_1ab
    :try_start_1ab
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDING_NEARBY:I
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1ad} :catch_c43

    if-ne v2, v3, :cond_212

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 374
    :goto_1b1
    :try_start_1b1
    array-length v3, v1

    if-ge v0, v3, :cond_1ff

    .line 375
    aget v3, v1, v0

    add-int/lit8 v6, v0, 0x1

    .line 376
    aget v6, v1, v6

    .line 377
    iget-object v9, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    int-to-long v10, v3

    add-long v10, v22, v10

    long-to-int v3, v10

    int-to-long v10, v6

    add-long/2addr v10, v7

    long-to-int v6, v10

    invoke-virtual {v9, v3, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 378
    iget-object v3, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_1fc

    .line 379
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fc

    iget v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1ea

    .line 380
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v6

    iget v9, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    if-ne v6, v9, :cond_1fc

    :cond_1ea
    iget-object v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-eqz v6, :cond_1fa

    .line 381
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget-object v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1fc

    :cond_1fa
    add-int/lit8 v2, v2, 0x1

    :cond_1fc
    add-int/lit8 v0, v0, 0x2

    goto :goto_1b1

    :cond_1ff
    int-to-long v0, v2

    .line 385
    iget-wide v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->min:J

    iget-wide v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->z:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_112

    iget-wide v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->max:J
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_20b} :catch_ca

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gtz v0, :cond_112

    goto/16 :goto_10f

    .line 387
    :cond_212
    :try_start_212
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_WIRE:I
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_214} :catch_c43

    if-ne v2, v3, :cond_25c

    if-eqz v6, :cond_116

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_21e

    move v1, v0

    goto :goto_221

    :cond_21e
    const/4 v0, 0x3

    move v1, v0

    const/4 v0, 0x0

    :goto_221
    const/4 v2, 0x0

    :goto_222
    if-ge v0, v1, :cond_113

    if-nez v2, :cond_113

    .line 395
    :try_start_226
    iget-object v3, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13, v0}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v3

    if-eqz v3, :cond_258

    .line 396
    iget-object v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v6, :cond_245

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v7, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_258

    goto :goto_245

    :catch_241
    move-exception v0

    move-object v1, v5

    goto/16 :goto_c4a

    :cond_245
    :goto_245
    iget-object v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-eqz v6, :cond_255

    .line 397
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v3

    iget-object v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_253} :catch_241

    if-eqz v2, :cond_258

    :cond_255
    move/from16 v2, v18

    goto :goto_259

    :cond_258
    const/4 v2, 0x0

    :goto_259
    add-int/lit8 v0, v0, 0x1

    goto :goto_222

    .line 401
    :cond_25c
    :try_start_25c
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD:I
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_25e} :catch_c43

    const/16 v27, -0x2

    if-ne v2, v3, :cond_2ae

    if-eqz v6, :cond_116

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_26a

    move v1, v0

    goto :goto_26e

    :cond_26a
    move/from16 v0, v27

    const/16 v1, 0x10

    :goto_26e
    const/4 v2, 0x0

    :goto_26f
    if-gt v0, v1, :cond_113

    if-nez v2, :cond_113

    .line 410
    :try_start_273
    iget-object v3, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_2a9

    .line 411
    iget-object v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v6, :cond_289

    iget-object v7, v3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 412
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a9

    :cond_289
    iget v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_29a

    .line 413
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v6

    const/16 v17, 0x10

    div-int/lit8 v6, v6, 0x10

    iget v7, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    if-ne v6, v7, :cond_2a9

    :cond_29a
    iget-object v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-eqz v6, :cond_2a6

    iget-object v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 414
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3
    :try_end_2a4
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_2a4} :catch_241

    if-eqz v3, :cond_2a9

    :cond_2a6
    move/from16 v3, v18

    goto :goto_2aa

    :cond_2a9
    const/4 v3, 0x0

    :goto_2aa
    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_26f

    .line 418
    :cond_2ae
    :try_start_2ae
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_DECORATION:I
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2b0} :catch_c43

    if-ne v2, v3, :cond_308

    if-eqz v6, :cond_116

    if-ltz v0, :cond_2b8

    move v1, v0

    goto :goto_2bc

    :cond_2b8
    move/from16 v0, v27

    const/16 v1, 0x10

    :goto_2bc
    const/4 v2, 0x0

    :goto_2bd
    if-gt v0, v1, :cond_113

    if-nez v2, :cond_113

    .line 427
    :try_start_2c1
    iget-object v3, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_305

    const/4 v6, 0x0

    .line 429
    :goto_2ca
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v7

    if-ge v6, v7, :cond_305

    .line 430
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v7

    if-eqz v7, :cond_300

    .line 431
    iget-object v8, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v8, :cond_2e2

    iget-object v9, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 432
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_300

    :cond_2e2
    iget v8, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2f3

    .line 433
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v8

    const/16 v17, 0x10

    div-int/lit8 v8, v8, 0x10

    iget v9, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    if-ne v8, v9, :cond_300

    :cond_2f3
    iget-object v8, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-eqz v8, :cond_2fd

    .line 434
    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v7
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2fb} :catch_241

    if-eqz v7, :cond_300

    :cond_2fd
    move/from16 v7, v18

    goto :goto_301

    :cond_300
    const/4 v7, 0x0

    :goto_301
    or-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2ca

    :cond_305
    add-int/lit8 v0, v0, 0x1

    goto :goto_2bd

    .line 440
    :cond_308
    :try_start_308
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_OCCUPATION:I
    :try_end_30a
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_30a} :catch_c43

    if-ne v2, v3, :cond_355

    if-eqz v6, :cond_116

    if-ltz v0, :cond_312

    move v1, v0

    goto :goto_316

    :cond_312
    move/from16 v0, v27

    const/16 v1, 0x10

    :goto_316
    const/4 v2, 0x0

    :goto_317
    if-gt v0, v1, :cond_113

    if-nez v2, :cond_113

    .line 449
    :try_start_31b
    iget-object v3, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_336

    .line 451
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v6

    if-eqz v6, :cond_336

    iget-object v7, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v7, :cond_339

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 452
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_336

    goto :goto_339

    :cond_336
    const/16 v17, 0x10

    goto :goto_350

    :cond_339
    :goto_339
    iget v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_34b

    .line 453
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v3

    const/16 v17, 0x10

    div-int/lit8 v3, v3, 0x10

    iget v6, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I
    :try_end_348
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_348} :catch_241

    if-ne v3, v6, :cond_350

    goto :goto_34d

    :cond_34b
    const/16 v17, 0x10

    :goto_34d
    move/from16 v3, v18

    goto :goto_351

    :cond_350
    :goto_350
    const/4 v3, 0x0

    :goto_351
    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_317

    .line 457
    :cond_355
    :try_start_355
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_FENCE:I
    :try_end_357
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_357} :catch_c43

    if-ne v2, v3, :cond_36f

    .line 458
    :try_start_359
    iget-object v0, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasFence(II)Z

    move-result v0

    if-eqz v0, :cond_112

    iget v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    if-ltz v0, :cond_10f

    iget-object v1, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, v4, v13, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v0
    :try_end_36b
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_36b} :catch_ca

    if-eqz v0, :cond_112

    goto/16 :goto_10f

    .line 460
    :cond_36f
    :try_start_36f
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_PIPE:I
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_36f .. :try_end_371} :catch_c43

    if-ne v2, v3, :cond_391

    if-eqz v6, :cond_116

    .line 462
    :try_start_375
    iget-object v0, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_112

    .line 463
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v1, :cond_10f

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_38d
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_38d} :catch_ca

    if-eqz v0, :cond_112

    goto/16 :goto_10f

    .line 466
    :cond_391
    :try_start_391
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_TREE:I
    :try_end_393
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_393} :catch_c43

    if-ne v2, v3, :cond_3b3

    if-eqz v6, :cond_116

    .line 468
    :try_start_397
    iget-object v0, v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-eqz v0, :cond_112

    .line 469
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v1, :cond_10f

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_397 .. :try_end_3af} :catch_ca

    if-eqz v0, :cond_112

    goto/16 :goto_10f

    .line 472
    :cond_3b3
    :try_start_3b3
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_AND:I
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_3b3 .. :try_end_3b5} :catch_c43

    if-ne v2, v3, :cond_40e

    .line 474
    :try_start_3b7
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;
    :try_end_3b9
    .catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3b9} :catch_406

    if-eqz v1, :cond_3ff

    move/from16 v16, v18

    const/4 v15, 0x0

    .line 475
    :goto_3be
    :try_start_3be
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_3f9

    if-eqz v16, :cond_3f9

    .line 476
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-object/from16 v13, p12

    move-object v1, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move/from16 v17, v15

    move/from16 v15, v18

    move-wide/from16 v3, v22

    move-object/from16 v12, p11

    move v11, v0

    invoke-virtual/range {v1 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v16
    :try_end_3e4
    .catch Ljava/lang/Exception; {:try_start_3be .. :try_end_3e4} :catch_3f2

    move-wide/from16 v22, v3

    move v0, v11

    move-wide v11, v9

    move-wide v9, v7

    move-wide v7, v5

    add-int/lit8 v1, v17, 0x1

    move-object/from16 v5, p0

    move/from16 v18, v15

    move v15, v1

    goto :goto_3be

    :catch_3f2
    move-exception v0

    move-object/from16 v1, p0

    move/from16 v2, v16

    goto/16 :goto_c4a

    :cond_3f9
    move-object/from16 v1, p0

    move/from16 v2, v16

    goto/16 :goto_c51

    :cond_3ff
    move/from16 v15, v18

    :goto_401
    move-object/from16 v1, p0

    move v2, v15

    goto/16 :goto_c51

    :catch_406
    move-exception v0

    move/from16 v15, v18

    move-object/from16 v1, p0

    move v2, v15

    goto/16 :goto_c4a

    :cond_40e
    move/from16 v17, v15

    move/from16 v15, v18

    .line 480
    :try_start_412
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_OR:I
    :try_end_414
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_414} :catch_c39

    if-ne v2, v3, :cond_44f

    .line 482
    :try_start_416
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;
    :try_end_418
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_418} :catch_95

    if-eqz v1, :cond_44a

    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 483
    :goto_41d
    :try_start_41d
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f9

    if-nez v16, :cond_3f9

    .line 484
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-object/from16 v13, p12

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide/from16 v3, v22

    move-object/from16 v12, p11

    move v11, v0

    move v0, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v16
    :try_end_440
    .catch Ljava/lang/Exception; {:try_start_41d .. :try_end_440} :catch_3f2

    move-wide/from16 v22, v3

    move v3, v11

    move-wide v11, v9

    move-wide v9, v7

    move-wide v7, v5

    add-int/lit8 v1, v0, 0x1

    move v0, v3

    goto :goto_41d

    :cond_44a
    :goto_44a
    const/4 v2, 0x0

    :goto_44b
    move-object/from16 v1, p0

    goto/16 :goto_c51

    :cond_44f
    move v3, v0

    .line 488
    :try_start_450
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_TRUE:I

    if-ne v2, v0, :cond_455

    goto :goto_401

    .line 491
    :cond_455
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_FALSE:I

    if-ne v2, v0, :cond_45a

    goto :goto_44a

    .line 494
    :cond_45a
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_COUNT:I
    :try_end_45c
    .catch Ljava/lang/Exception; {:try_start_450 .. :try_end_45c} :catch_c39

    if-ne v2, v0, :cond_4d5

    .line 496
    :try_start_45e
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    if-eqz v0, :cond_4bd

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 497
    :goto_464
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b4

    int-to-long v4, v1

    cmp-long v2, v4, v25

    if-gtz v2, :cond_4b4

    .line 498
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-object/from16 v13, p12

    move/from16 v16, v1

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move/from16 v18, v15

    move-object/from16 v1, p0

    move-wide/from16 v14, p8

    move-object/from16 v12, p11

    move v11, v3

    move-wide/from16 v3, v22

    invoke-virtual/range {v1 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v2
    :try_end_48f
    .catch Ljava/lang/Exception; {:try_start_45e .. :try_end_48f} :catch_4ad

    move-wide/from16 v27, v3

    move-wide/from16 v29, v5

    move-wide/from16 v31, v7

    if-eqz v2, :cond_49a

    add-int/lit8 v1, v16, 0x1

    goto :goto_49c

    :cond_49a
    move/from16 v1, v16

    :goto_49c
    add-int/lit8 v0, v0, 0x1

    move v3, v11

    move-wide/from16 p8, v14

    move/from16 v15, v18

    move-wide/from16 v22, v27

    move-wide/from16 v7, v29

    move-object/from16 v14, p1

    move-wide v11, v9

    move-wide/from16 v9, v31

    goto :goto_464

    :catch_4ad
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    goto/16 :goto_cc

    :cond_4b4
    move/from16 v16, v1

    move/from16 v18, v15

    move-wide/from16 v14, p8

    move/from16 v2, v16

    goto :goto_4c2

    :cond_4bd
    move/from16 v18, v15

    move-wide/from16 v14, p8

    const/4 v2, 0x0

    :goto_4c2
    int-to-long v0, v2

    cmp-long v2, v0, v14

    if-ltz v2, :cond_4ce

    cmp-long v0, v0, v25

    if-gtz v0, :cond_4ce

    move/from16 v2, v18

    goto :goto_4cf

    :cond_4ce
    const/4 v2, 0x0

    :goto_4cf
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    goto/16 :goto_c51

    :cond_4d5
    move-wide/from16 v29, v7

    move-wide/from16 v31, v9

    move-wide v9, v11

    move/from16 v18, v15

    move-wide/from16 v27, v22

    move-wide/from16 v14, p8

    move v11, v3

    .line 504
    :try_start_4e1
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_NEARBY:I
    :try_end_4e3
    .catch Ljava/lang/Exception; {:try_start_4e1 .. :try_end_4e3} :catch_c3d

    if-ne v2, v0, :cond_54c

    move-object/from16 v3, p1

    .line 506
    :try_start_4e7
    iget-object v0, v3, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    if-eqz v0, :cond_53b

    const/4 v13, 0x0

    .line 507
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Condition;

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 508
    :goto_4f5
    array-length v5, v1

    if-ge v0, v5, :cond_533

    int-to-long v5, v4

    cmp-long v5, v5, v25

    if-gtz v5, :cond_533

    .line 509
    aget v5, v1, v0

    add-int/lit8 v6, v0, 0x1

    .line 510
    aget v6, v1, v6
    :try_end_503
    .catch Ljava/lang/Exception; {:try_start_4e7 .. :try_end_503} :catch_52f

    int-to-long v7, v5

    add-long v7, v27, v7

    int-to-long v5, v6

    add-long v5, v29, v5

    move v9, v4

    move-wide v3, v7

    const-wide/16 v7, 0x1

    move v12, v9

    const-wide/16 v9, 0x1

    move-object/from16 v13, p12

    move/from16 v16, v12

    move-wide/from16 v33, v14

    move-object/from16 v14, p1

    move-object/from16 v12, p11

    move-object v15, v1

    move-object/from16 v1, p0

    .line 511
    :try_start_51d
    invoke-virtual/range {v1 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v3
    :try_end_521
    .catch Ljava/lang/Exception; {:try_start_51d .. :try_end_521} :catch_95

    if-eqz v3, :cond_526

    add-int/lit8 v4, v16, 0x1

    goto :goto_528

    :cond_526
    move/from16 v4, v16

    :goto_528
    add-int/lit8 v0, v0, 0x2

    move-object v3, v14

    move-object v1, v15

    move-wide/from16 v14, v33

    goto :goto_4f5

    :catch_52f
    move-exception v0

    move-object v14, v3

    goto/16 :goto_96

    :cond_533
    move/from16 v16, v4

    move-wide/from16 v33, v14

    move-object v14, v3

    move/from16 v2, v16

    goto :goto_53f

    :cond_53b
    move-wide/from16 v33, v14

    move-object v14, v3

    const/4 v2, 0x0

    :goto_53f
    int-to-long v0, v2

    cmp-long v2, v0, v33

    if-ltz v2, :cond_44a

    cmp-long v0, v0, v25

    if-gtz v0, :cond_44a

    :goto_548
    move/from16 v2, v18

    goto/16 :goto_44b

    :cond_54c
    move-wide/from16 v33, v14

    move-object/from16 v14, p1

    .line 517
    :try_start_550
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_LINE:I
    :try_end_552
    .catch Ljava/lang/Exception; {:try_start_550 .. :try_end_552} :catch_c39

    if-ne v2, v0, :cond_5ab

    .line 519
    :try_start_554
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    if-eqz v0, :cond_5a0

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_55a
    int-to-long v1, v0

    cmp-long v3, v1, v20

    if-gez v3, :cond_59e

    int-to-long v3, v15

    add-long v5, v3, v20

    sub-long/2addr v5, v1

    cmp-long v7, v5, v33

    if-ltz v7, :cond_59e

    cmp-long v3, v3, v33

    if-ltz v3, :cond_56f

    cmp-long v3, v5, v25

    if-lez v3, :cond_59e

    .line 521
    :cond_56f
    invoke-static/range {v17 .. v17}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v1

    add-long v3, v27, v3

    .line 522
    invoke-static/range {v17 .. v17}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v1, v5

    add-long v5, v29, v1

    .line 523
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Condition;

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v2
    :try_end_597
    .catch Ljava/lang/Exception; {:try_start_554 .. :try_end_597} :catch_95

    if-eqz v2, :cond_59b

    add-int/lit8 v15, v15, 0x1

    :cond_59b
    add-int/lit8 v0, v0, 0x1

    goto :goto_55a

    :cond_59e
    move v2, v15

    goto :goto_5a1

    :cond_5a0
    const/4 v2, 0x0

    :goto_5a1
    int-to-long v0, v2

    cmp-long v2, v0, v33

    if-ltz v2, :cond_44a

    cmp-long v0, v0, v25

    if-gtz v0, :cond_44a

    goto :goto_548

    .line 530
    :cond_5ab
    :try_start_5ab
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RECT:I
    :try_end_5ad
    .catch Ljava/lang/Exception; {:try_start_5ab .. :try_end_5ad} :catch_c39

    if-ne v2, v0, :cond_61e

    mul-long v15, v31, v9

    .line 533
    :try_start_5b1
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    if-eqz v0, :cond_60b

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5b7
    int-to-long v2, v0

    cmp-long v4, v2, v15

    if-gez v4, :cond_5cd

    int-to-long v4, v1

    add-long v6, v4, v15

    sub-long/2addr v6, v2

    cmp-long v8, v6, v33

    if-ltz v8, :cond_5cd

    cmp-long v4, v4, v33

    if-ltz v4, :cond_5d2

    cmp-long v4, v6, v25

    if-lez v4, :cond_5cd

    goto :goto_5d2

    :cond_5cd
    move/from16 v17, v1

    move-object/from16 v1, p0

    goto :goto_608

    .line 535
    :cond_5d2
    :goto_5d2
    rem-long v4, v2, v31

    add-long v5, v27, v4

    .line 536
    div-long v2, v2, v31

    add-long v7, v29, v2

    .line 537
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->innerConditions:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Condition;
    :try_end_5e3
    .catch Ljava/lang/Exception; {:try_start_5b1 .. :try_end_5e3} :catch_603

    move-wide v3, v5

    move-wide v5, v7

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, v1

    move-object/from16 v1, p0

    :try_start_5f1
    invoke-virtual/range {v1 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v2
    :try_end_5f5
    .catch Ljava/lang/Exception; {:try_start_5f1 .. :try_end_5f5} :catch_600

    if-eqz v2, :cond_5fb

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    :cond_5fb
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v17

    goto :goto_5b7

    :catch_600
    move-exception v0

    goto/16 :goto_cc

    :catch_603
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_cc

    :goto_608
    move/from16 v2, v17

    goto :goto_60e

    :cond_60b
    move-object/from16 v1, p0

    const/4 v2, 0x0

    :goto_60e
    int-to-long v2, v2

    cmp-long v0, v2, v33

    if-ltz v0, :cond_61b

    cmp-long v0, v2, v25

    if-gtz v0, :cond_61b

    :cond_617
    :goto_617
    move/from16 v2, v18

    goto/16 :goto_c51

    :cond_61b
    const/4 v2, 0x0

    goto/16 :goto_c51

    :cond_61e
    move-object/from16 v1, p0

    move-object/from16 v12, p11

    .line 544
    :try_start_622
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_FRAME:I
    :try_end_624
    .catch Ljava/lang/Exception; {:try_start_622 .. :try_end_624} :catch_c37

    if-ne v2, v0, :cond_6bd

    if-eqz v6, :cond_117

    .line 546
    :try_start_628
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_660

    .line 547
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v2, :cond_63e

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_660

    .line 548
    :cond_63e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v33

    if-ltz v2, :cond_655

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v25

    if-gtz v2, :cond_655

    iget v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-eq v2, v9, :cond_65d

    :cond_655
    iget v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v3
    :try_end_65b
    .catch Ljava/lang/Exception; {:try_start_628 .. :try_end_65b} :catch_600

    if-ne v2, v3, :cond_660

    :cond_65d
    move/from16 v2, v18

    goto :goto_661

    :cond_660
    const/4 v2, 0x0

    :goto_661
    if-nez v0, :cond_c51

    .line 551
    :try_start_663
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-virtual {v1, v4, v13, v0, v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->resolveRoad(IILjava/lang/String;I)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_61b

    .line 552
    iget-object v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-nez v3, :cond_692

    .line 553
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v33

    if-ltz v3, :cond_68a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v25

    if-gtz v3, :cond_68a

    iget v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-eq v3, v9, :cond_617

    goto :goto_68a

    :catch_687
    move-exception v0

    goto/16 :goto_c4a

    :cond_68a
    :goto_68a
    iget v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    .line 554
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v4

    if-eq v3, v4, :cond_617

    :cond_692
    iget-object v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    const-string v4, "f"

    .line 555
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v33

    if-ltz v3, :cond_6b3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v25

    if-gtz v3, :cond_6b3

    iget v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-eq v3, v9, :cond_617

    :cond_6b3
    iget v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    .line 556
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v0
    :try_end_6b9
    .catch Ljava/lang/Exception; {:try_start_663 .. :try_end_6b9} :catch_687

    if-ne v3, v0, :cond_61b

    goto/16 :goto_617

    .line 560
    :cond_6bd
    :try_start_6bd
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_PERFORMANCE:I
    :try_end_6bf
    .catch Ljava/lang/Exception; {:try_start_6bd .. :try_end_6bf} :catch_c37

    const/high16 v3, 0x42c80000    # 100.0f

    if-ne v2, v0, :cond_714

    if-eqz v6, :cond_117

    .line 562
    :try_start_6c5
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_61b

    .line 564
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getPerformance()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    .line 565
    iget-object v4, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-eqz v4, :cond_6fc

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6fc

    .line 566
    iget-object v4, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;
    :try_end_6e3
    .catch Ljava/lang/Exception; {:try_start_6c5 .. :try_end_6e3} :catch_600

    long-to-int v2, v2

    move-object/from16 p2, v1

    move/from16 p12, v2

    move-object/from16 p3, v4

    move-wide/from16 p10, v9

    move-wide/from16 p4, v27

    move-wide/from16 p6, v29

    move-wide/from16 p8, v31

    :try_start_6f2
    invoke-virtual/range {p2 .. p12}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v2
    :try_end_6f6
    .catch Ljava/lang/Exception; {:try_start_6f2 .. :try_end_6f6} :catch_6f7

    goto :goto_6fc

    :catch_6f7
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_cc

    .line 568
    :cond_6fc
    :goto_6fc
    :try_start_6fc
    iget-object v4, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v4, :cond_70a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_708
    .catch Ljava/lang/Exception; {:try_start_6fc .. :try_end_708} :catch_600

    if-eqz v0, :cond_61b

    :cond_70a
    cmp-long v0, v2, v33

    if-ltz v0, :cond_61b

    cmp-long v0, v2, v25

    if-gtz v0, :cond_61b

    goto/16 :goto_617

    :cond_714
    move-wide/from16 v20, v9

    move-wide/from16 v7, v29

    move-wide/from16 v9, v31

    .line 573
    :try_start_71a
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_LAND:I
    :try_end_71c
    .catch Ljava/lang/Exception; {:try_start_71a .. :try_end_71c} :catch_c37

    if-ne v2, v0, :cond_726

    .line 574
    :try_start_71e
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isLand(II)Z

    move-result v2
    :try_end_724
    .catch Ljava/lang/Exception; {:try_start_71e .. :try_end_724} :catch_600

    goto/16 :goto_c51

    .line 576
    :cond_726
    :try_start_726
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_WATER:I
    :try_end_728
    .catch Ljava/lang/Exception; {:try_start_726 .. :try_end_728} :catch_c37

    if-ne v2, v0, :cond_732

    .line 577
    :try_start_72a
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v2
    :try_end_730
    .catch Ljava/lang/Exception; {:try_start_72a .. :try_end_730} :catch_600

    goto/16 :goto_c51

    .line 579
    :cond_732
    :try_start_732
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_USAGE:I
    :try_end_734
    .catch Ljava/lang/Exception; {:try_start_732 .. :try_end_734} :catch_c37

    if-ne v2, v0, :cond_753

    .line 580
    :try_start_736
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    move/from16 v5, p10

    invoke-virtual {v1, v4, v13, v0, v5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->resolveRoad(IILjava/lang/String;I)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_61b

    .line 582
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F
    :try_end_742
    .catch Ljava/lang/Exception; {:try_start_736 .. :try_end_742} :catch_600

    mul-float/2addr v0, v3

    move-wide/from16 v2, v33

    long-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_61b

    move-wide/from16 v2, v25

    long-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_61b

    goto/16 :goto_617

    :cond_753
    move-object/from16 p4, v6

    move-wide/from16 v5, v25

    move-wide/from16 p8, v33

    .line 586
    :try_start_759
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ZONE:I
    :try_end_75b
    .catch Ljava/lang/Exception; {:try_start_759 .. :try_end_75b} :catch_c37

    if-ne v2, v0, :cond_777

    if-eqz p4, :cond_117

    .line 588
    :try_start_75f
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    .line 589
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-nez v2, :cond_76b

    if-nez v0, :cond_617

    :cond_76b
    if-eqz v0, :cond_61b

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_773
    .catch Ljava/lang/Exception; {:try_start_75f .. :try_end_773} :catch_600

    if-eqz v0, :cond_61b

    goto/16 :goto_617

    .line 593
    :cond_777
    :try_start_777
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BUILDING_COUNT:I
    :try_end_779
    .catch Ljava/lang/Exception; {:try_start_777 .. :try_end_779} :catch_c37

    if-ne v2, v0, :cond_7b5

    .line 594
    :try_start_77b
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_7a0

    .line 596
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, p8

    if-ltz v0, :cond_61b

    cmp-long v0, v2, v5

    if-gtz v0, :cond_61b

    goto/16 :goto_617

    .line 599
    :cond_7a0
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result v0
    :try_end_7aa
    .catch Ljava/lang/Exception; {:try_start_77b .. :try_end_7aa} :catch_600

    int-to-long v2, v0

    cmp-long v0, v2, p8

    if-ltz v0, :cond_61b

    cmp-long v0, v2, v5

    if-gtz v0, :cond_61b

    goto/16 :goto_617

    .line 603
    :cond_7b5
    :try_start_7b5
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_VALUE:I
    :try_end_7b7
    .catch Ljava/lang/Exception; {:try_start_7b5 .. :try_end_7b7} :catch_c37

    if-ne v2, v0, :cond_7e2

    .line 604
    :try_start_7b9
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    .line 605
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    if-eqz v2, :cond_7c7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7c7

    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    :cond_7c7
    move-wide/from16 v33, p8

    move/from16 v11, p10

    move-object v2, v0

    move-wide/from16 v25, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide/from16 v9, v20

    move-wide/from16 v3, v27

    .line 606
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v2
    :try_end_7d8
    .catch Ljava/lang/Exception; {:try_start_7b9 .. :try_end_7d8} :catch_600

    cmp-long v0, v2, v33

    if-ltz v0, :cond_61b

    cmp-long v0, v2, v25

    if-gtz v0, :cond_61b

    goto/16 :goto_617

    :cond_7e2
    move-wide/from16 v35, p8

    move-wide/from16 v37, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide/from16 v9, v20

    .line 609
    :try_start_7ea
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BURNING:I
    :try_end_7ec
    .catch Ljava/lang/Exception; {:try_start_7ea .. :try_end_7ec} :catch_c37

    if-ne v2, v0, :cond_80e

    if-eqz p4, :cond_117

    .line 611
    :try_start_7f0
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 612
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v2

    if-eqz v0, :cond_804

    .line 613
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result v0

    if-nez v0, :cond_617

    :cond_804
    if-eqz v2, :cond_61b

    .line 614
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Tree;->isBurning()Z

    move-result v0
    :try_end_80a
    .catch Ljava/lang/Exception; {:try_start_7f0 .. :try_end_80a} :catch_600

    if-eqz v0, :cond_61b

    goto/16 :goto_617

    .line 617
    :cond_80e
    :try_start_80e
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_UPGRADE:I
    :try_end_810
    .catch Ljava/lang/Exception; {:try_start_80e .. :try_end_810} :catch_c37

    if-ne v2, v0, :cond_83e

    if-eqz p4, :cond_117

    .line 619
    :try_start_814
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_61b

    .line 621
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v2, :cond_832

    .line 622
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v2, :cond_61b

    .line 623
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v0

    if-eqz v0, :cond_61b

    goto/16 :goto_617

    .line 625
    :cond_832
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_83a
    .catch Ljava/lang/Exception; {:try_start_814 .. :try_end_83a} :catch_600

    xor-int/lit8 v2, v0, 0x1

    goto/16 :goto_c51

    .line 630
    :cond_83e
    :try_start_83e
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DATE:I
    :try_end_840
    .catch Ljava/lang/Exception; {:try_start_83e .. :try_end_840} :catch_c37

    if-ne v2, v0, :cond_876

    .line 631
    :try_start_842
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    move/from16 v15, v18

    invoke-virtual {v0, v15}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 632
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    .line 633
    iget v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    if-ltz v0, :cond_855

    goto :goto_857

    :cond_855
    const/16 v0, 0x168

    :goto_857
    int-to-long v4, v0

    .line 634
    rem-long/2addr v2, v4
    :try_end_859
    .catch Ljava/lang/Exception; {:try_start_842 .. :try_end_859} :catch_600

    move-wide/from16 v33, v35

    move-wide/from16 v25, v37

    cmp-long v0, v33, v25

    if-lez v0, :cond_869

    add-long v6, v25, v4

    cmp-long v0, v2, v33

    if-gez v0, :cond_86b

    add-long/2addr v2, v4

    goto :goto_86b

    :cond_869
    move-wide/from16 v6, v25

    :cond_86b
    :goto_86b
    cmp-long v0, v2, v33

    if-ltz v0, :cond_61b

    cmp-long v0, v2, v6

    if-gtz v0, :cond_61b

    :cond_873
    :goto_873
    const/4 v2, 0x1

    goto/16 :goto_c51

    :cond_876
    move/from16 p5, v3

    move v15, v4

    move-wide/from16 v29, v5

    move-wide/from16 v3, v35

    move-wide/from16 v5, v37

    .line 643
    :try_start_87f
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_GROUND:I
    :try_end_881
    .catch Ljava/lang/Exception; {:try_start_87f .. :try_end_881} :catch_c37

    if-ne v2, v0, :cond_89d

    .line 644
    :try_start_883
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/Draft;

    .line 645
    instance-of v2, v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v2, :cond_61b

    if-eqz p4, :cond_61b

    .line 646
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_89b
    .catch Ljava/lang/Exception; {:try_start_883 .. :try_end_89b} :catch_600

    goto/16 :goto_c51

    .line 649
    :cond_89d
    :try_start_89d
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_SANDBOX:I
    :try_end_89f
    .catch Ljava/lang/Exception; {:try_start_89d .. :try_end_89f} :catch_c37

    if-ne v2, v0, :cond_8ad

    .line 650
    :try_start_8a1
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v2
    :try_end_8ab
    .catch Ljava/lang/Exception; {:try_start_8a1 .. :try_end_8ab} :catch_600

    goto/16 :goto_c51

    .line 652
    :cond_8ad
    :try_start_8ad
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_EVENT:I
    :try_end_8af
    .catch Ljava/lang/Exception; {:try_start_8ad .. :try_end_8af} :catch_c37

    if-ne v2, v0, :cond_8bc

    if-eqz v12, :cond_873

    .line 653
    :try_start_8b3
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8b9
    .catch Ljava/lang/Exception; {:try_start_8b3 .. :try_end_8b9} :catch_600

    if-eqz v0, :cond_61b

    goto :goto_873

    .line 655
    :cond_8bc
    :try_start_8bc
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ROAD_COUNT:I
    :try_end_8be
    .catch Ljava/lang/Exception; {:try_start_8bc .. :try_end_8be} :catch_c37

    if-ne v2, v0, :cond_8f9

    .line 656
    :try_start_8c0
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v0, :cond_8e4

    .line 658
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v7, v3

    if-ltz v0, :cond_61b

    cmp-long v0, v7, v5

    if-gtz v0, :cond_61b

    :goto_8e3
    goto :goto_873

    .line 661
    :cond_8e4
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/RoadList;->size()I

    move-result v0
    :try_end_8ee
    .catch Ljava/lang/Exception; {:try_start_8c0 .. :try_end_8ee} :catch_600

    int-to-long v7, v0

    cmp-long v0, v7, v3

    if-ltz v0, :cond_61b

    cmp-long v0, v7, v5

    if-gtz v0, :cond_61b

    goto/16 :goto_873

    .line 665
    :cond_8f9
    :try_start_8f9
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_MAP_SIZE:I
    :try_end_8fb
    .catch Ljava/lang/Exception; {:try_start_8f9 .. :try_end_8fb} :catch_c37

    if-ne v2, v0, :cond_90e

    .line 666
    :try_start_8fd
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0
    :try_end_903
    .catch Ljava/lang/Exception; {:try_start_8fd .. :try_end_903} :catch_600

    int-to-long v7, v0

    cmp-long v0, v7, v3

    if-ltz v0, :cond_61b

    cmp-long v0, v7, v5

    if-gtz v0, :cond_61b

    goto/16 :goto_873

    .line 669
    :cond_90e
    :try_start_90e
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_INFLUENCE:I
    :try_end_910
    .catch Ljava/lang/Exception; {:try_start_90e .. :try_end_910} :catch_c37

    if-ne v2, v0, :cond_947

    .line 670
    :try_start_912
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v0, :cond_117

    .line 671
    invoke-static {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->fromTag(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    if-eqz v0, :cond_61b

    .line 673
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    move/from16 v7, v19

    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v2, v15, v13, v0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v0

    mul-float v0, v0, p5

    const/4 v2, 0x0

    .line 674
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move/from16 v2, p5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0
    :try_end_93b
    .catch Ljava/lang/Exception; {:try_start_912 .. :try_end_93b} :catch_600

    long-to-float v2, v3

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_61b

    long-to-float v2, v5

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_61b

    goto/16 :goto_873

    .line 679
    :cond_947
    :try_start_947
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RND:I
    :try_end_949
    .catch Ljava/lang/Exception; {:try_start_947 .. :try_end_949} :catch_c37

    if-ne v2, v0, :cond_95d

    .line 680
    :try_start_94b
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_953
    .catch Ljava/lang/Exception; {:try_start_94b .. :try_end_953} :catch_600

    int-to-long v7, v0

    cmp-long v0, v3, v7

    if-gtz v0, :cond_61b

    cmp-long v0, v7, v5

    if-gtz v0, :cond_61b

    goto :goto_8e3

    .line 683
    :cond_95d
    :try_start_95d
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ABANDONED:I
    :try_end_95f
    .catch Ljava/lang/Exception; {:try_start_95d .. :try_end_95f} :catch_c37

    if-ne v2, v0, :cond_971

    if-eqz p4, :cond_117

    .line 685
    :try_start_963
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_61b

    .line 687
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v2
    :try_end_96f
    .catch Ljava/lang/Exception; {:try_start_963 .. :try_end_96f} :catch_600

    goto/16 :goto_c51

    .line 691
    :cond_971
    :try_start_971
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RCI:I
    :try_end_973
    .catch Ljava/lang/Exception; {:try_start_971 .. :try_end_973} :catch_c37

    if-ne v2, v0, :cond_989

    if-eqz p4, :cond_117

    .line 693
    :try_start_977
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_61b

    .line 695
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v2
    :try_end_987
    .catch Ljava/lang/Exception; {:try_start_977 .. :try_end_987} :catch_600

    goto/16 :goto_c51

    .line 699
    :cond_989
    :try_start_989
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_COMPARE:I
    :try_end_98b
    .catch Ljava/lang/Exception; {:try_start_989 .. :try_end_98b} :catch_c37

    if-ne v2, v0, :cond_9f7

    .line 700
    :try_start_98d
    iget-object v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    .line 701
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;
    :try_end_991
    .catch Ljava/lang/Exception; {:try_start_98d .. :try_end_991} :catch_9f3

    move-object/from16 p3, v0

    move-object/from16 p2, v1

    move-wide/from16 p8, v7

    move-wide/from16 p10, v9

    move/from16 p12, v11

    move-wide/from16 p4, v27

    move-wide/from16 p6, v29

    .line 702
    :try_start_99f
    invoke-virtual/range {p2 .. p12}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v0

    move-object/from16 p2, p0

    move-object/from16 p3, v2

    .line 703
    invoke-virtual/range {p2 .. p12}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v2
    :try_end_9ab
    .catch Ljava/lang/Exception; {:try_start_99f .. :try_end_9ab} :catch_9ef

    move-object/from16 v7, p2

    .line 704
    :try_start_9ad
    sget-object v4, Linfo/flowersoft/theotown/draft/Transition;->COMPARISON_OPS:[Ljava/lang/String;

    iget v5, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    aget-object v4, v4, v5

    .line 705
    const-string v5, "<="

    if-ne v4, v5, :cond_9bd

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9e1

    :cond_9bb
    :goto_9bb
    const/4 v2, 0x1

    goto :goto_9ec

    .line 707
    :cond_9bd
    const-string v5, ">="

    if-ne v4, v5, :cond_9c6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9e1

    goto :goto_9bb

    .line 709
    :cond_9c6
    const-string v5, "<"

    if-ne v4, v5, :cond_9cf

    cmp-long v0, v0, v2

    if-gez v0, :cond_9e1

    goto :goto_9bb

    .line 711
    :cond_9cf
    const-string v5, ">"

    if-ne v4, v5, :cond_9d8

    cmp-long v0, v0, v2

    if-lez v0, :cond_9e1

    goto :goto_9bb

    .line 713
    :cond_9d8
    const-string v5, "="

    if-eq v4, v5, :cond_9e7

    const-string v5, "=="
    :try_end_9de
    .catch Ljava/lang/Exception; {:try_start_9ad .. :try_end_9de} :catch_9e3

    if-ne v4, v5, :cond_9e1

    goto :goto_9e7

    :cond_9e1
    const/4 v2, 0x0

    goto :goto_9ec

    :catch_9e3
    move-exception v0

    :goto_9e4
    move-object v1, v7

    goto/16 :goto_cc

    :cond_9e7
    :goto_9e7
    cmp-long v0, v0, v2

    if-nez v0, :cond_9e1

    goto :goto_9bb

    :goto_9ec
    move-object v1, v7

    goto/16 :goto_c51

    :catch_9ef
    move-exception v0

    move-object/from16 v7, p2

    goto :goto_9e4

    :catch_9f3
    move-exception v0

    move-object v7, v1

    goto/16 :goto_cc

    :cond_9f7
    move v0, v11

    move-wide v11, v9

    move-wide v9, v7

    move-object v7, v1

    .line 717
    :try_start_9fb
    sget v1, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_VALID:I

    if-ne v2, v1, :cond_a02

    if-eqz p4, :cond_9e1

    goto :goto_9bb

    .line 720
    :cond_a02
    sget v1, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_EDGE:I
    :try_end_a04
    .catch Ljava/lang/Exception; {:try_start_9fb .. :try_end_a04} :catch_c31

    if-ne v2, v1, :cond_a2b

    cmp-long v0, v27, p2

    if-eqz v0, :cond_9bb

    cmp-long v0, v29, p2

    if-eqz v0, :cond_9bb

    .line 721
    :try_start_a0e
    iget-object v0, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    cmp-long v0, v27, v0

    if-eqz v0, :cond_9bb

    iget-object v0, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0
    :try_end_a23
    .catch Ljava/lang/Exception; {:try_start_a0e .. :try_end_a23} :catch_9e3

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    cmp-long v0, v29, v0

    if-nez v0, :cond_9e1

    goto :goto_9bb

    .line 723
    :cond_a2b
    :try_start_a2b
    sget v1, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_SELECT:I
    :try_end_a2d
    .catch Ljava/lang/Exception; {:try_start_a2b .. :try_end_a2d} :catch_c31

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v2, v1, :cond_aae

    if-eqz p4, :cond_aab

    .line 725
    :try_start_a33
    iget-object v0, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_aa7

    .line 727
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 728
    iget v4, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_a45

    const/4 v4, 0x1

    :cond_a45
    if-lez v4, :cond_aa7

    .line 731
    iget-object v1, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_aa7

    .line 733
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 734
    iget-object v2, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selectedAmount:Lcom/badlogic/gdx/utils/IntIntMap;
    :try_end_a5f
    .catch Ljava/lang/Exception; {:try_start_a33 .. :try_end_a5f} :catch_aa4

    const/4 v3, 0x0

    :try_start_a60
    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    .line 735
    iget-object v5, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->visitedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v5, v0, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v5

    sub-int/2addr v1, v5

    sub-int v6, v4, v2

    if-ge v2, v4, :cond_a96

    if-lez v1, :cond_a96

    sub-int/2addr v1, v6

    const/4 v15, 0x1

    add-int/2addr v1, v15

    .line 739
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v8, v1

    .line 740
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    cmpg-float v1, v1, v8

    if-gez v1, :cond_a85

    const/4 v3, 0x1

    :cond_a85
    if-eqz v3, :cond_a96

    .line 741
    iget-object v1, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selectedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

    const/16 v18, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V
    :try_end_a90
    .catch Ljava/lang/Exception; {:try_start_a60 .. :try_end_a90} :catch_a91

    goto :goto_a96

    :catch_a91
    move-exception v0

    :goto_a92
    move v2, v3

    :goto_a93
    move-object v1, v7

    goto/16 :goto_c4a

    :cond_a96
    :goto_a96
    move v2, v3

    .line 743
    :try_start_a97
    iget-object v1, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->visitedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v0, v5}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V
    :try_end_aa0
    .catch Ljava/lang/Exception; {:try_start_a97 .. :try_end_aa0} :catch_aa2

    goto/16 :goto_9ec

    :catch_aa2
    move-exception v0

    goto :goto_a93

    :catch_aa4
    move-exception v0

    const/4 v3, 0x0

    goto :goto_a92

    :cond_aa7
    const/4 v3, 0x0

    move v2, v3

    goto/16 :goto_9ec

    :cond_aab
    move-object v1, v7

    goto/16 :goto_117

    :cond_aae
    const/16 v22, 0x0

    .line 749
    :try_start_ab0
    sget v1, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ANIMATION_FRAME:I

    if-ne v2, v1, :cond_b03

    if-eqz p4, :cond_b00

    .line 751
    iget-object v0, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v0

    .line 752
    iget v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->level:I

    if-gez v2, :cond_ac9

    move/from16 v2, v22

    .line 754
    :cond_ac9
    iget-object v1, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_afc

    .line 755
    iget-object v8, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v8, :cond_ae6

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_afc

    goto :goto_ae6

    :catch_ae0
    move-exception v0

    move-object v1, v7

    :goto_ae2
    move/from16 v2, v22

    goto/16 :goto_c4a

    .line 756
    :cond_ae6
    :goto_ae6
    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->activeAnimationSpotFrame(II)I

    move-result v0

    .line 757
    iget v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_af8

    int-to-long v8, v0

    cmp-long v2, v3, v8

    if-gtz v2, :cond_af8

    cmp-long v2, v8, v5

    if-lez v2, :cond_9bb

    :cond_af8
    if-ne v1, v0, :cond_afc

    goto/16 :goto_9bb

    :cond_afc
    move/from16 v2, v22

    goto/16 :goto_9ec

    :cond_b00
    move-object v1, v7

    goto/16 :goto_b7c

    .line 762
    :cond_b03
    sget v1, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_ANIMATION_RUNNING:I

    if-ne v2, v1, :cond_b3b

    if-eqz p4, :cond_b00

    .line 764
    iget-object v0, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    .line 765
    iget v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->level:I

    if-gez v2, :cond_b1b

    move/from16 v2, v22

    .line 767
    :cond_b1b
    iget-object v0, v7, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_afc

    .line 768
    iget-object v1, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v1, :cond_b31

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_afc

    .line 769
    :cond_b31
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAnimationFrameSpeed(I)F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_afc

    goto/16 :goto_9bb

    .line 773
    :cond_b3b
    sget v1, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_CITY_NAME:I

    if-ne v2, v1, :cond_b5c

    .line 774
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;
    :try_end_b41
    .catch Ljava/lang/Exception; {:try_start_ab0 .. :try_end_b41} :catch_ae0

    move-object v1, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide/from16 v3, v27

    move-wide/from16 v5, v29

    move/from16 v11, p10

    :try_start_b4a
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_c51

    :catch_b5a
    move-exception v0

    goto :goto_ae2

    :cond_b5c
    move-object v1, v7

    .line 776
    sget v7, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DISASTER:I

    if-ne v2, v7, :cond_b86

    .line 777
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    if-eqz v0, :cond_b7c

    .line 779
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v2, :cond_b80

    .line 780
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/Disaster;

    move-result-object v0

    if-eqz v0, :cond_b7c

    .line 782
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Disaster;->isActive()Z

    move-result v2

    goto/16 :goto_c51

    :cond_b7c
    :goto_b7c
    move/from16 v2, v22

    goto/16 :goto_c51

    .line 785
    :cond_b80
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v2

    goto/16 :goto_c51

    .line 789
    :cond_b86
    sget v7, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_BURNABLE:I

    if-ne v2, v7, :cond_b9e

    if-eqz p4, :cond_b7c

    .line 791
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_b7c

    .line 792
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->burnable:Z

    if-eqz v0, :cond_b7c

    goto/16 :goto_873

    .line 795
    :cond_b9e
    sget v7, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DESTROYABLE:I

    if-ne v2, v7, :cond_bb6

    if-eqz p4, :cond_b7c

    .line 797
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_b7c

    .line 798
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz v0, :cond_b7c

    goto/16 :goto_873

    .line 801
    :cond_bb6
    sget v7, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_DAYS_BUILT:I

    if-ne v2, v7, :cond_be3

    if-eqz p4, :cond_b7c

    .line 803
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v15, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_b7c

    .line 805
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v8

    double-to-int v0, v8

    int-to-long v8, v0

    cmp-long v0, v8, v3

    if-ltz v0, :cond_b7c

    cmp-long v0, v8, v5

    if-gtz v0, :cond_b7c

    :goto_be0
    move v2, v7

    goto/16 :goto_c51

    :cond_be3
    const/4 v7, 0x1

    .line 810
    sget v8, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_RANK:I

    if-ne v2, v8, :cond_bfb

    .line 811
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    .line 812
    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    int-to-long v8, v0

    cmp-long v2, v3, v8

    if-gtz v2, :cond_b7c

    int-to-long v2, v0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_b7c

    goto :goto_be0

    .line 814
    :cond_bfb
    sget v3, Linfo/flowersoft/theotown/draft/Transition;->CONDITION_CALL:I

    if-ne v2, v3, :cond_b7c

    .line 815
    iget-object v2, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->id:Ljava/lang/String;

    if-eqz v2, :cond_c09

    const-class v3, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v24

    :cond_c09
    move-object/from16 v2, v24

    if-eqz v2, :cond_c18

    .line 818
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    iget-object v4, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v2

    goto :goto_c22

    .line 820
    :cond_c18
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    iget-object v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v2

    :goto_c22
    if-eqz v2, :cond_b7c

    .line 822
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_b7c

    .line 823
    iget v3, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->frame:I

    invoke-virtual {v2, v15, v13, v0, v3}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    move-result v2
    :try_end_c30
    .catch Ljava/lang/Exception; {:try_start_b4a .. :try_end_c30} :catch_b5a

    goto :goto_c51

    :catch_c31
    move-exception v0

    move-object v1, v7

    :goto_c33
    const/16 v22, 0x0

    goto/16 :goto_ae2

    :catch_c37
    move-exception v0

    goto :goto_c33

    :catch_c39
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c33

    :catch_c3d
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    goto :goto_c33

    :catch_c43
    move-exception v0

    move-object v1, v5

    goto :goto_c33

    :catch_c46
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_c33

    .line 827
    :goto_c4a
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Condition"

    invoke-interface {v3, v4, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 829
    :cond_c51
    :goto_c51
    iget-boolean v0, v14, Linfo/flowersoft/theotown/draft/Transition$Condition;->invert:Z

    xor-int/2addr v0, v2

    return v0

    nop

    :array_c56
    .array-data 4
        -0x1
        -0x1
        0x0
        -0x1
        0x1
        -0x1
        0x1
        0x0
        0x1
        0x1
        0x0
        0x1
        -0x1
        0x1
        -0x1
        0x0
    .end array-data
.end method

.method public final collectTransitions(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;JJJJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lvm2/LuaValue;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p12

    move/from16 v14, p14

    .line 211
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 214
    :goto_e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_e7

    move-object/from16 v2, p1

    .line 215
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/Transition;

    move v5, v1

    .line 217
    iget-object v1, v4, Linfo/flowersoft/theotown/draft/Transition;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-wide/from16 v2, p2

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p13

    move-object v15, v4

    move/from16 v17, v5

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v12}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 219
    iget-boolean v0, v15, Linfo/flowersoft/theotown/draft/Transition;->always:Z

    if-eqz v0, :cond_86

    iget v11, v15, Linfo/flowersoft/theotown/draft/Transition;->probability:F

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v1, v15

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->getTransitionProbability(Linfo/flowersoft/theotown/draft/Transition;JJ)F

    move-result v15

    cmpl-float v11, v11, v15

    if-ltz v11, :cond_8d

    .line 220
    iget-object v11, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSources:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSenders:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v2

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 224
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v4

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 225
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v6

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 226
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v8

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 227
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 228
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v14}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 229
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionResults:Lio/blueflower/stapel2d/util/IntList;

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_e3

    :cond_86
    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v1, v15

    .line 232
    :cond_8d
    iget-object v11, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    iget v15, v1, Linfo/flowersoft/theotown/draft/Transition;->probability:F

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->getTransitionProbability(Linfo/flowersoft/theotown/draft/Transition;JJ)F

    move-result v14

    invoke-virtual {v11, v1, v15, v14}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;FF)V

    :cond_98
    move/from16 v14, p14

    goto :goto_e3

    :cond_9b
    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v1, v15

    .line 234
    iget-object v11, v1, Linfo/flowersoft/theotown/draft/Transition;->elseActions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_98

    .line 235
    iget-object v11, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSources:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSenders:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v2

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 239
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v4

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 240
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v6

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 241
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v11, v8

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 242
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 243
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    move/from16 v14, p14

    invoke-virtual {v1, v14}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 244
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionResults:Lio/blueflower/stapel2d/util/IntList;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_e3
    add-int/lit8 v1, v17, 0x1

    goto/16 :goto_e

    :cond_e7
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v12, p13

    .line 248
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_14d

    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getProbabilitySum()F

    move-result v1

    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v11

    cmpl-float v1, v1, v11

    if-ltz v1, :cond_14d

    .line 249
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    iget-object v11, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/draft/Transition;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSources:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSenders:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 253
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v2, v4

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 254
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v2, v6

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 255
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    long-to-int v2, v8

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 256
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 257
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v14}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 258
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionResults:Lio/blueflower/stapel2d/util/IntList;

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v11, 0x1

    :goto_14e
    if-lez v16, :cond_151

    return v11

    :cond_151
    const/16 v18, 0x0

    return v18
.end method

.method public doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const/4 v12, 0x1

    if-nez v15, :cond_8

    return v12

    :cond_8
    move/from16 v0, p2

    int-to-long v2, v0

    .line 839
    :try_start_b
    iget-wide v4, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->x:J

    add-long v3, v2, v4

    move/from16 v0, p3

    int-to-long v5, v0

    .line 840
    iget-wide v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->y:J

    add-long/2addr v5, v7

    .line 841
    iget-wide v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->x2:J

    add-long/2addr v7, v3

    .line 842
    iget-wide v9, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->y2:J

    add-long/2addr v9, v5

    long-to-int v0, v7

    long-to-int v2, v9

    .line 843
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v11

    .line 844
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v14, v7, 0x1

    .line 845
    iget-wide v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->w:J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_5dd

    const-wide/16 v9, 0x0

    cmp-long v16, v7, v9

    if-ltz v16, :cond_41

    move-wide/from16 p2, v9

    move-wide v8, v7

    move/from16 v7, p4

    :goto_3c
    move/from16 v17, v14

    const/16 v16, 0x0

    goto :goto_48

    :cond_41
    move/from16 v7, p4

    move-wide/from16 p2, v9

    int-to-long v9, v7

    move-wide v8, v9

    goto :goto_3c

    .line 846
    :goto_48
    :try_start_48
    iget-wide v13, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->h:J

    cmp-long v10, v13, p2

    if-ltz v10, :cond_54

    move/from16 v10, p5

    :goto_50
    move-wide/from16 v19, v13

    move-wide v12, v3

    goto :goto_58

    :cond_54
    move/from16 v10, p5

    int-to-long v13, v10

    goto :goto_50

    :goto_58
    long-to-int v4, v12

    move-wide v6, v5

    long-to-int v5, v6

    .line 849
    iget v3, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->level:I

    const/high16 v14, -0x80000000

    move-wide/from16 v21, v12

    if-eq v3, v14, :cond_65

    move v12, v3

    goto :goto_67

    :cond_65
    move/from16 v12, p6

    .line 852
    :goto_67
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 853
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    goto :goto_7c

    :catch_76
    move-exception v0

    :goto_77
    move/from16 v12, v16

    goto/16 :goto_be4

    :cond_7b
    const/4 v3, 0x0

    .line 856
    :goto_7c
    iget v14, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->type:I

    .line 857
    sget v13, Linfo/flowersoft/theotown/draft/Transition;->ACTION_BUILD:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_80} :catch_76

    const-wide/16 v25, 0x1

    if-ne v14, v13, :cond_2a3

    .line 858
    :try_start_84
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/Draft;

    .line 859
    instance-of v7, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_90} :catch_13a

    if-eqz v7, :cond_d8

    .line 860
    :try_start_92
    move-object v3, v6

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 861
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_a5

    if-eqz p7, :cond_d2

    .line 862
    :cond_a5
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v6, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    move-object/from16 v7, p9

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    move-result-object v0

    move-object v10, v7

    .line 863
    iget-wide v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->z:J

    cmp-long v2, v2, v25

    if-nez v2, :cond_d0

    if-eqz v0, :cond_d0

    if-eqz p7, :cond_d0

    .line 864
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3, v2, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_cf} :catch_76

    goto :goto_be

    :cond_d0
    const/4 v0, 0x1

    goto :goto_d4

    :cond_d2
    move/from16 v0, v16

    :goto_d4
    move/from16 v13, v16

    goto/16 :goto_29e

    :cond_d8
    move-object/from16 v10, p9

    .line 868
    :try_start_da
    instance-of v7, v6, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v7, :cond_13e

    .line 869
    check-cast v6, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 870
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v3

    .line 871
    invoke-virtual {v3, v4, v5, v0, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 872
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    .line 873
    iget-wide v4, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->w:J
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_ed} :catch_13a

    cmp-long v2, v4, v25

    if-nez v2, :cond_f3

    .line 874
    :try_start_f1
    sput-boolean v16, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f3} :catch_76

    .line 877
    :cond_f3
    :try_start_f3
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f5} :catch_13a

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10e

    move/from16 v2, v16

    .line 878
    :try_start_fa
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLevels(I)V

    const/4 v2, 0x1

    :goto_fe
    if-gt v2, v12, :cond_10c

    .line 880
    invoke-virtual {v3, v2, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setInnerLevels(II)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_103} :catch_106

    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    :catch_106
    move-exception v0

    :goto_107
    const/4 v12, 0x0

    :goto_108
    const/16 v16, 0x0

    goto/16 :goto_be4

    :cond_10c
    const/4 v13, 0x0

    goto :goto_117

    :cond_10e
    int-to-long v4, v12

    .line 883
    :try_start_10f
    iget-wide v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->z:J
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_111} :catch_137

    add-long/2addr v4, v7

    long-to-int v2, v4

    const/4 v13, 0x0

    :try_start_114
    invoke-virtual {v3, v12, v2, v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevelStartTarget(IIZ)V

    .line 885
    :goto_117
    invoke-virtual {v3, v6, v10}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 886
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 887
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_123} :catch_125

    const/4 v2, 0x1

    goto :goto_12c

    :catch_125
    move-exception v0

    :goto_126
    move v12, v13

    move/from16 v16, v12

    goto/16 :goto_be4

    :cond_12b
    move v2, v13

    .line 890
    :goto_12c
    :try_start_12c
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_12e} :catch_131

    move v0, v2

    goto/16 :goto_29e

    :catch_131
    move-exception v0

    move v12, v2

    move/from16 v16, v13

    goto/16 :goto_be4

    :catch_137
    move-exception v0

    const/4 v13, 0x0

    goto :goto_126

    :catch_13a
    move-exception v0

    move/from16 v13, v16

    goto :goto_126

    :cond_13e
    move/from16 v13, v16

    .line 891
    :try_start_140
    instance-of v7, v6, Linfo/flowersoft/theotown/draft/WireDraft;

    if-eqz v7, :cond_178

    .line 892
    check-cast v6, Linfo/flowersoft/theotown/draft/WireDraft;

    .line 893
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move/from16 p6, v0

    move/from16 p7, v2

    move-object/from16 p2, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p3, v6

    invoke-virtual/range {p2 .. p7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z

    move-result v0

    move-object/from16 v6, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v2, p6

    move/from16 v3, p7

    if-eqz v0, :cond_29d

    .line 894
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-object/from16 p2, v0

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p3, v6

    invoke-virtual/range {p2 .. p7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Ljava/util/List;

    :goto_175
    const/4 v0, 0x1

    goto/16 :goto_29e

    :cond_178
    move/from16 v30, v2

    move v2, v0

    move/from16 v0, v30

    .line 897
    instance-of v7, v6, Linfo/flowersoft/theotown/draft/PipeDraft;

    if-eqz v7, :cond_1b3

    .line 898
    check-cast v6, Linfo/flowersoft/theotown/draft/PipeDraft;

    .line 899
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move/from16 p7, v0

    move/from16 p6, v2

    move-object/from16 p2, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p3, v6

    invoke-virtual/range {p2 .. p7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z

    move-result v0

    move-object/from16 v6, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v2, p6

    move/from16 v3, p7

    if-eqz v0, :cond_29d

    .line 900
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-object/from16 p2, v0

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move-object/from16 p3, v6

    invoke-virtual/range {p2 .. p7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Ljava/util/List;

    goto :goto_175

    .line 903
    :cond_1b3
    instance-of v0, v6, Linfo/flowersoft/theotown/draft/TreeDraft;

    if-eqz v0, :cond_1c7

    .line 904
    check-cast v6, Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 905
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v6, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 906
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v6, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/TreeDraft;II)Linfo/flowersoft/theotown/city/objects/Tree;

    goto :goto_175

    .line 909
    :cond_1c7
    instance-of v0, v6, Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v0, :cond_1dd

    .line 910
    check-cast v6, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 911
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v6, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 912
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v6, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v0

    goto/16 :goto_29e

    .line 914
    :cond_1dd
    instance-of v0, v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v0, :cond_20f

    if-eqz v3, :cond_29d

    .line 916
    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 917
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v2, v6, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {v0, v2, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 918
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-boolean v2, v6, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {v0, v2, v4, v5, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    .line 920
    :cond_1f6
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v0

    iget-boolean v2, v6, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-ne v0, v2, :cond_29d

    .line 921
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 922
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v2, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setFrame(I)V

    goto/16 :goto_175

    .line 926
    :cond_20f
    instance-of v0, v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v0, :cond_248

    .line 927
    check-cast v6, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v3, :cond_29d

    .line 929
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_29d

    .line 930
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v2

    if-nez v2, :cond_29d

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 931
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v2

    if-nez v2, :cond_29d

    .line 932
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    invoke-virtual {v0, v6, v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->appendUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;J)V

    goto :goto_29d

    .line 935
    :cond_248
    instance-of v0, v6, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v0, :cond_276

    .line 936
    check-cast v6, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v3, :cond_29d

    .line 938
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v5, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_29d

    .line 940
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2, v6, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoadDecorationBuildable(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 941
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v3, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->multiRoadDecorationSupport:Z

    move-object/from16 p4, v0

    move-object/from16 p2, v2

    move/from16 p5, v3

    move/from16 p7, v4

    move-object/from16 p3, v6

    move-object/from16 p6, v10

    invoke-virtual/range {p2 .. p7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;ILvm2/LuaValue;Z)V

    goto :goto_29d

    .line 945
    :cond_276
    instance-of v0, v6, Linfo/flowersoft/theotown/draft/FenceDraft;

    if-eqz v0, :cond_29d

    .line 946
    check-cast v6, Linfo/flowersoft/theotown/draft/FenceDraft;

    .line 947
    iget v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-gez v0, :cond_296

    .line 948
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    long-to-int v2, v8

    move-wide/from16 v7, v19

    long-to-int v3, v7

    move-object/from16 p4, v0

    move/from16 p8, v2

    move/from16 p9, v3

    move/from16 p6, v4

    move/from16 p7, v5

    move-object/from16 p5, v6

    invoke-virtual/range {p4 .. p9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFenceAround(Linfo/flowersoft/theotown/draft/FenceDraft;IIII)V

    goto :goto_29d

    :cond_296
    move v2, v4

    move v4, v5

    .line 950
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3, v6, v2, v4, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_29d} :catch_125

    :cond_29d
    :goto_29d
    move v0, v13

    :goto_29e
    move v12, v0

    move/from16 v16, v13

    goto/16 :goto_bee

    :cond_2a3
    move-object/from16 v0, p9

    move v2, v4

    move v4, v5

    move-wide v5, v6

    move-wide v7, v8

    move-wide/from16 v9, v19

    .line 953
    :try_start_2ab
    sget v13, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE:I
    :try_end_2ad
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2ad} :catch_5dd

    if-ne v14, v13, :cond_2d0

    if-eqz v3, :cond_5e2

    .line 955
    :try_start_2b1
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_2c4

    .line 956
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyableByFun:Z

    if-eqz v0, :cond_2c2

    goto :goto_2c4

    :cond_2c2
    const/4 v4, 0x0

    goto :goto_2cb

    .line 957
    :cond_2c4
    :goto_2c4
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IILvm2/LuaValue;)V
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2ca} :catch_106

    :goto_2ca
    const/4 v4, 0x1

    :cond_2cb
    :goto_2cb
    move v12, v4

    :goto_2cc
    const/16 v16, 0x0

    goto/16 :goto_bee

    .line 961
    :cond_2d0
    :try_start_2d0
    sget v13, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_FENCE:I
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2d2} :catch_5dd

    if-ne v14, v13, :cond_2ef

    if-eqz v3, :cond_2ed

    .line 962
    :try_start_2d6
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v0

    if-eqz v0, :cond_2ed

    .line 963
    iget v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-gez v0, :cond_2e8

    .line 964
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFences(II)V

    goto :goto_2ed

    .line 966
    :cond_2e8
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3, v2, v4, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_2ed} :catch_106

    :cond_2ed
    :goto_2ed
    const/4 v12, 0x1

    goto :goto_2cc

    .line 970
    :cond_2ef
    :try_start_2ef
    sget v13, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_PIPE:I
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_2f1} :catch_5dd

    if-ne v14, v13, :cond_31b

    if-eqz v3, :cond_5e2

    .line 972
    :try_start_2f5
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_2c2

    .line 973
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v2, :cond_30d

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c2

    .line 974
    :cond_30d
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Pipe;->getX()I

    move-result v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Pipe;->getY()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Pipe;II)V
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_31a} :catch_106

    goto :goto_2ca

    .line 978
    :cond_31b
    :try_start_31b
    sget v13, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_ROAD_DECORATION:I
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_31d} :catch_5dd

    const/16 v19, 0x10

    const/16 v20, -0x2

    if-ne v14, v13, :cond_3b5

    if-eqz v3, :cond_3b1

    const/high16 v3, -0x80000000

    if-le v12, v3, :cond_32b

    move v3, v12

    goto :goto_32f

    :cond_32b
    move/from16 v3, v19

    move/from16 v12, v20

    :goto_32f
    const/4 v5, 0x0

    :goto_330
    if-gt v12, v3, :cond_3ac

    if-nez v5, :cond_3ac

    .line 987
    :try_start_334
    iget-object v6, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v2, v4, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v6

    if-eqz v6, :cond_354

    .line 989
    iget-object v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_33e} :catch_3a3

    if-nez v7, :cond_35b

    .line 990
    :try_start_340
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v7

    if-lez v7, :cond_354

    .line 991
    iget-object v7, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v8

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v6

    invoke-virtual {v7, v8, v6, v12, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeAllRoadDecorations(IIILvm2/LuaValue;)V
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_353} :catch_357

    const/4 v5, 0x1

    :cond_354
    const/16 v18, 0x1

    goto :goto_3a7

    :catch_357
    move-exception v0

    :goto_358
    move v12, v5

    goto/16 :goto_108

    .line 995
    :cond_35b
    :try_start_35b
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v7
    :try_end_35f
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_35f} :catch_3a3

    const/16 v18, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_363
    if-ltz v7, :cond_3a7

    .line 996
    :try_start_365
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v8

    if-eqz v8, :cond_39e

    .line 997
    iget-object v9, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    iget-object v10, v8, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37f

    iget-object v9, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->occupationGroup:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39e

    .line 998
    :cond_37f
    iget-object v8, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v9

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v10

    move-object/from16 p7, v0

    move/from16 p6, v7

    move-object/from16 p2, v8

    move/from16 p3, v9

    move/from16 p4, v10

    move/from16 p5, v12

    invoke-virtual/range {p2 .. p7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRoadDecoration(IIIILvm2/LuaValue;)V
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_365 .. :try_end_398} :catch_357

    move/from16 v12, p5

    move/from16 v7, p6

    move/from16 v5, v18

    :cond_39e
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p9

    goto :goto_363

    :catch_3a3
    move-exception v0

    const/16 v18, 0x1

    goto :goto_358

    :cond_3a7
    :goto_3a7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p9

    goto :goto_330

    :cond_3ac
    const/16 v18, 0x1

    move v12, v5

    goto/16 :goto_2cc

    :cond_3b1
    const/16 v18, 0x1

    goto/16 :goto_5e2

    :cond_3b5
    const/16 v18, 0x1

    .line 1006
    :try_start_3b7
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_REMOVE_ROAD_OCCUPATION:I
    :try_end_3b9
    .catch Ljava/lang/Exception; {:try_start_3b7 .. :try_end_3b9} :catch_5dd

    if-ne v14, v0, :cond_3ea

    if-eqz v3, :cond_5e2

    const/high16 v3, -0x80000000

    if-le v12, v3, :cond_3c3

    move v0, v12

    goto :goto_3c7

    :cond_3c3
    move/from16 v0, v19

    move/from16 v12, v20

    :goto_3c7
    const/4 v3, 0x0

    :goto_3c8
    if-gt v12, v0, :cond_3e7

    if-nez v3, :cond_3e7

    .line 1015
    :try_start_3cc
    iget-object v5, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v4, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v5

    if-eqz v5, :cond_3e4

    .line 1017
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v6

    if-eqz v6, :cond_3e4

    .line 1019
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V
    :try_end_3dd
    .catch Ljava/lang/Exception; {:try_start_3cc .. :try_end_3dd} :catch_3e0

    move/from16 v3, v18

    goto :goto_3e4

    :catch_3e0
    move-exception v0

    move v12, v3

    goto/16 :goto_108

    :cond_3e4
    :goto_3e4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3c8

    :cond_3e7
    move v12, v3

    goto/16 :goto_2cc

    .line 1025
    :cond_3ea
    :try_start_3ea
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_FRAME:I
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_3ec} :catch_5dd

    if-ne v14, v0, :cond_45d

    if-eqz v3, :cond_5e2

    .line 1027
    :try_start_3f0
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_407

    .line 1028
    iget-object v3, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v3, :cond_40a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_407

    goto :goto_40a

    :cond_407
    move v13, v2

    move v14, v4

    goto :goto_43c

    .line 1029
    :cond_40a
    :goto_40a
    iget v3, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-gez v3, :cond_41b

    .line 1030
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v11

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v11, v11

    invoke-virtual {v3, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1031
    :cond_41b
    iget-object v11, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    if-eqz v11, :cond_434

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_434

    move v11, v2

    .line 1032
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    move v14, v4

    move v13, v11

    move-wide/from16 v3, v21

    move/from16 v11, p6

    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v2

    long-to-int v3, v2

    goto :goto_436

    :cond_434
    move v13, v2

    move v14, v4

    .line 1034
    :goto_436
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/objects/Building;->setFrame(I)V
    :try_end_439
    .catch Ljava/lang/Exception; {:try_start_3f0 .. :try_end_439} :catch_106

    move/from16 v4, v18

    goto :goto_43d

    :goto_43c
    const/4 v4, 0x0

    .line 1038
    :goto_43d
    :try_start_43d
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-virtual {v1, v13, v14, v0, v12}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->resolveRoad(IILjava/lang/String;I)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_2cb

    .line 1040
    iget-wide v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->w:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_456

    .line 1041
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    goto/16 :goto_2cb

    :catch_452
    move-exception v0

    move v12, v4

    goto/16 :goto_108

    .line 1043
    :cond_456
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/objects/Road;->alignToRaw(I)V
    :try_end_45b
    .catch Ljava/lang/Exception; {:try_start_43d .. :try_end_45b} :catch_452

    goto/16 :goto_2cb

    :cond_45d
    move v13, v2

    move v0, v4

    move-wide/from16 v19, v7

    move-wide v6, v5

    move-wide/from16 v4, v21

    move-wide/from16 v21, v9

    move-wide/from16 v8, p2

    .line 1047
    :try_start_468
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_PERFORMANCE:I
    :try_end_46a
    .catch Ljava/lang/Exception; {:try_start_468 .. :try_end_46a} :catch_5dd

    if-ne v14, v2, :cond_491

    if-eqz v3, :cond_5e2

    .line 1049
    :try_start_46e
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v13, v0}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_2c2

    .line 1051
    iget-object v12, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    move/from16 v11, p6

    move-wide v3, v4

    move-wide v5, v6

    move-wide/from16 v7, v19

    move-wide/from16 v9, v21

    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v12, v0, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setBuildingPerformance(Linfo/flowersoft/theotown/city/objects/Building;F)V
    :try_end_48d
    .catch Ljava/lang/Exception; {:try_start_46e .. :try_end_48d} :catch_106

    :goto_48d
    move/from16 v4, v18

    goto/16 :goto_2cb

    .line 1055
    :cond_491
    :try_start_491
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_BURN:I
    :try_end_493
    .catch Ljava/lang/Exception; {:try_start_491 .. :try_end_493} :catch_5dd

    const-class v10, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    move-wide/from16 p2, v8

    const/4 v8, 0x6

    if-ne v14, v2, :cond_4b6

    if-eqz v3, :cond_5e2

    .line 1057
    :try_start_49c
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v13, v0}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_2c2

    .line 1059
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-virtual {v2, v10}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 1060
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z
    :try_end_4b5
    .catch Ljava/lang/Exception; {:try_start_49c .. :try_end_4b5} :catch_106

    goto :goto_48d

    .line 1064
    :cond_4b6
    :try_start_4b6
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_EXTINGUISH:I
    :try_end_4b8
    .catch Ljava/lang/Exception; {:try_start_4b6 .. :try_end_4b8} :catch_5dd

    if-ne v14, v2, :cond_4d6

    if-eqz v3, :cond_5e2

    .line 1066
    :try_start_4bc
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v13, v0}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_2c2

    .line 1068
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-virtual {v2, v10}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 1069
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->removeFire(Linfo/flowersoft/theotown/city/objects/Building;)V
    :try_end_4d5
    .catch Ljava/lang/Exception; {:try_start_4bc .. :try_end_4d5} :catch_106

    goto :goto_48d

    .line 1073
    :cond_4d6
    :try_start_4d6
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_NOTIFY:I

    if-ne v14, v2, :cond_5e8

    .line 1074
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v2, :cond_5e2

    .line 1075
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/NotificationDraft;

    if-eqz v2, :cond_5e2

    .line 1077
    new-instance v8, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v9, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v8, v9}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1079
    iget-object v9, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object v9

    iget-object v10, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-wide/16 v23, -0x1

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v14, v0

    .line 1080
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    move-object v9, v3

    move-object v3, v2

    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;
    :try_end_507
    .catch Ljava/lang/Exception; {:try_start_4d6 .. :try_end_507} :catch_5dd

    move-object v15, v8

    move-object/from16 v18, v9

    move/from16 v28, v14

    move-wide/from16 v8, v19

    move-wide/from16 v10, v21

    const/16 v16, 0x0

    move/from16 v14, p7

    move/from16 v19, v13

    move-object/from16 v13, p8

    :try_start_518
    invoke-direct/range {v0 .. v14}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;-><init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/NotificationDraft;JJJJILjava/lang/String;Z)V
    :try_end_51b
    .catch Ljava/lang/Exception; {:try_start_518 .. :try_end_51b} :catch_568

    move-object v14, v0

    move-object v0, v3

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    move v11, v12

    .line 1119
    :try_start_522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$notify_notificationdraft_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 1120
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v1, v1, v16

    invoke-virtual {v14, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 1121
    invoke-virtual {v15, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2
    :try_end_543
    .catch Ljava/lang/Exception; {:try_start_522 .. :try_end_543} :catch_58c

    move-object/from16 v1, p0

    :try_start_545
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v2
    :try_end_549
    .catch Ljava/lang/Exception; {:try_start_545 .. :try_end_549} :catch_568

    :try_start_549
    invoke-virtual {v14, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v15, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2
    :try_end_550
    .catch Ljava/lang/Exception; {:try_start_549 .. :try_end_550} :catch_58c

    move-object/from16 v1, p0

    :try_start_552
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v2
    :try_end_556
    .catch Ljava/lang/Exception; {:try_start_552 .. :try_end_556} :catch_568

    :try_start_556
    invoke-virtual {v14, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTitle(Ljava/lang/String;)V

    .line 1125
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->important:Z

    invoke-virtual {v14, v1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    .line 1126
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->closeable:Z
    :try_end_560
    .catch Ljava/lang/Exception; {:try_start_556 .. :try_end_560} :catch_58c

    if-eqz v1, :cond_56d

    :try_start_562
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->question:Z
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_562 .. :try_end_564} :catch_568

    if-nez v1, :cond_56d

    const/4 v12, 0x1

    goto :goto_56f

    :catch_568
    move-exception v0

    :goto_569
    move-object/from16 v15, p1

    goto/16 :goto_77

    :cond_56d
    move/from16 v12, v16

    :goto_56f
    :try_start_56f
    invoke-virtual {v14, v12}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCloseable(Z)V

    .line 1127
    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->isCloseable()Z

    move-result v1

    if-eqz v1, :cond_590

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/NotificationDraft;->cancelFun:Ljava/util/List;

    if-eqz v1, :cond_590

    move-object v2, v0

    .line 1128
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;
    :try_end_57f
    .catch Ljava/lang/Exception; {:try_start_56f .. :try_end_57f} :catch_58c

    move-object/from16 v1, p0

    move/from16 v13, p7

    move-object/from16 v12, p8

    :try_start_585
    invoke-direct/range {v0 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;-><init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner;Linfo/flowersoft/theotown/draft/NotificationDraft;JJJJILjava/lang/String;Z)V

    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setOnClose(Ljava/lang/Runnable;)V

    goto :goto_593

    :catch_58c
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_569

    :cond_590
    move-object/from16 v1, p0

    move-object v2, v0

    .line 1139
    :goto_593
    new-instance v0, Linfo/flowersoft/theotown/components/notification/condition/TrueCondition;

    iget-object v7, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v7}, Linfo/flowersoft/theotown/components/notification/condition/TrueCondition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 1140
    iget-boolean v0, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->immersive:Z

    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImmersive(Z)V

    .line 1141
    iget-boolean v0, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->showOnce:Z

    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setShowOnlyOnce(Z)V
    :try_end_5a7
    .catch Ljava/lang/Exception; {:try_start_585 .. :try_end_5a7} :catch_568

    move-object/from16 v15, p1

    .line 1144
    :try_start_5a9
    iget-wide v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->z:J

    cmp-long v0, v7, v25

    if-nez v0, :cond_5ce

    if-eqz v18, :cond_5ce

    .line 1145
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v13, v19

    move/from16 v2, v28

    invoke-virtual {v0, v13, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_5c6

    .line 1147
    new-instance v2, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v14, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    goto :goto_5ce

    .line 1151
    :cond_5c6
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda1;

    invoke-direct {v0, v3, v4, v5, v6}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda1;-><init>(JJ)V

    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 1155
    :cond_5ce
    :goto_5ce
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    .line 1156
    invoke-virtual {v0, v14}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->showNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    :cond_5da
    :goto_5da
    const/4 v12, 0x1

    goto/16 :goto_bee

    :catch_5dd
    move-exception v0

    const/16 v16, 0x0

    goto/16 :goto_77

    :cond_5e2
    :goto_5e2
    const/16 v16, 0x0

    :cond_5e4
    :goto_5e4
    move/from16 v12, v16

    goto/16 :goto_bee

    :cond_5e8
    move/from16 v28, v0

    move-object/from16 v18, v3

    move-wide/from16 v8, v19

    move-wide/from16 v2, v21

    const/16 v16, 0x0

    move-wide/from16 v21, v4

    move-wide v5, v6

    .line 1160
    sget v4, Linfo/flowersoft/theotown/draft/Transition;->ACTION_PLAY:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    if-ne v14, v4, :cond_648

    .line 1161
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v4, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/Draft;

    .line 1165
    instance-of v4, v0, Linfo/flowersoft/theotown/draft/SoundDraft;

    if-eqz v4, :cond_612

    .line 1166
    check-cast v0, Linfo/flowersoft/theotown/draft/SoundDraft;

    .line 1167
    iget v10, v0, Linfo/flowersoft/theotown/draft/SoundDraft;->sound:I

    .line 1168
    iget v0, v0, Linfo/flowersoft/theotown/draft/SoundDraft;->volume:F

    mul-float/2addr v7, v0

    goto :goto_616

    :cond_612
    if-eqz v0, :cond_616

    .line 1170
    iget v10, v0, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    .line 1174
    :cond_616
    :goto_616
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    if-ltz v10, :cond_5da

    .line 1177
    sget-object v4, Linfo/flowersoft/theotown/resources/SoundType;->PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v5, Linfo/flowersoft/theotown/components/transition/TransitionRunner$3;

    iget-object v6, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;
    :try_end_628
    .catch Ljava/lang/Exception; {:try_start_5a9 .. :try_end_628} :catch_76

    long-to-int v8, v8

    long-to-int v2, v2

    move-object/from16 p3, v1

    move/from16 p8, v2

    move-object/from16 p2, v5

    move-object/from16 p4, v6

    move/from16 p9, v7

    move/from16 p7, v8

    move/from16 p5, v13

    move/from16 p6, v28

    :try_start_63a
    invoke-direct/range {p2 .. p9}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$3;-><init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner;Linfo/flowersoft/theotown/city/City;IIIIF)V
    :try_end_63d
    .catch Ljava/lang/Exception; {:try_start_63a .. :try_end_63d} :catch_643

    move-object/from16 v2, p2

    :try_start_63f
    invoke-virtual {v0, v10, v4, v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    goto :goto_5da

    :catch_643
    move-exception v0

    move-object/from16 v1, p3

    goto/16 :goto_77

    :cond_648
    move v4, v13

    move/from16 v13, v28

    .line 1192
    sget v7, Linfo/flowersoft/theotown/draft/Transition;->ACTION_DISASTER:I

    if-ne v14, v7, :cond_6bf

    .line 1193
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v2, :cond_5e4

    .line 1194
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    if-eqz v0, :cond_5e4

    .line 1196
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/Disaster;

    move-result-object v0

    .line 1197
    instance-of v2, v0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    if-eqz v2, :cond_6af

    .line 1198
    check-cast v0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    .line 1199
    iget-wide v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->y2:J

    cmp-long v5, v2, p2

    if-lez v5, :cond_69f

    .line 1200
    iget-wide v5, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->x2:J

    cmp-long v5, v5, v25

    if-nez v5, :cond_678

    const/4 v12, 0x1

    goto :goto_67a

    :cond_678
    move/from16 v12, v16

    :goto_67a
    long-to-int v2, v2

    .line 1202
    iget v3, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-ne v3, v10, :cond_684

    .line 1203
    invoke-virtual {v0, v4, v13, v12, v2}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(IIZI)Z

    move-result v0

    goto :goto_6ac

    .line 1205
    :cond_684
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v4, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    .line 1206
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    .line 1207
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 1205
    invoke-virtual {v0, v4, v3, v12, v2}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(IIZI)Z

    move-result v0

    goto :goto_6ac

    .line 1211
    :cond_69f
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-ne v2, v10, :cond_6a8

    .line 1212
    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(II)Z

    move-result v0

    goto :goto_6ac

    .line 1214
    :cond_6a8
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Disaster;->issue()Z

    move-result v0

    :goto_6ac
    move v12, v0

    goto/16 :goto_bee

    :cond_6af
    if-eqz v0, :cond_5e4

    .line 1218
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-ne v2, v10, :cond_6ba

    .line 1219
    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/components/Disaster;->issue(II)Z

    move-result v0

    goto :goto_6ac

    .line 1221
    :cond_6ba
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Disaster;->issue()Z

    move-result v0

    goto :goto_6ac

    .line 1226
    :cond_6bf
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_TOAST:I

    if-ne v14, v0, :cond_6d6

    .line 1227
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    move-wide v10, v2

    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    move-wide v7, v8

    move-wide v9, v10

    move v11, v12

    move-wide/from16 v3, v21

    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    goto/16 :goto_5da

    :cond_6d6
    move-wide v7, v8

    .line 1229
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_FIREWORK:I

    const/16 v9, 0xc

    if-ne v14, v0, :cond_729

    .line 1230
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWeather;

    if-eqz v18, :cond_6ec

    .line 1231
    invoke-virtual/range {v18 .. v18}, Linfo/flowersoft/theotown/city/objects/Ground;->getCeilingTerrainheight()I

    move-result v2

    goto :goto_6ee

    :cond_6ec
    move/from16 v2, v16

    :goto_6ee
    if-eqz v18, :cond_6fc

    .line 1233
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_6fc

    .line 1235
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v2

    .line 1238
    :cond_6fc
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getFirework()Linfo/flowersoft/theotown/components/firework/Firework;

    move-result-object v0

    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v5, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-wide v5, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->z:J

    long-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v3, v4, v13, v2}, Linfo/flowersoft/theotown/components/firework/Firework;->emit(Linfo/flowersoft/theotown/draft/AnimationDraft;IIF)Z
    :try_end_714
    .catch Ljava/lang/Exception; {:try_start_63f .. :try_end_714} :catch_76

    .line 1240
    :try_start_714
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v0

    if-eqz v0, :cond_5da

    .line 1241
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v2, "firework_launch"

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z
    :try_end_723
    .catch Ljava/lang/Exception; {:try_start_714 .. :try_end_723} :catch_725

    goto/16 :goto_5da

    :catch_725
    move-exception v0

    const/4 v12, 0x1

    goto/16 :goto_be4

    .line 1243
    :cond_729
    :try_start_729
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_MONEY:I
    :try_end_72b
    .catch Ljava/lang/Exception; {:try_start_729 .. :try_end_72b} :catch_76

    move/from16 v20, v11

    const-wide/16 v10, 0x3e8

    if-ne v14, v0, :cond_7a5

    .line 1244
    :try_start_731
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_5e2

    .line 1245
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    move/from16 v13, v16

    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 1246
    iget-wide v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->x:J
    :try_end_749
    .catch Ljava/lang/Exception; {:try_start_731 .. :try_end_749} :catch_77c

    const-wide/32 v4, -0x186a0

    if-eqz p7, :cond_759

    .line 1250
    :try_start_74e
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2
    :try_end_756
    .catch Ljava/lang/Exception; {:try_start_74e .. :try_end_756} :catch_106

    move-wide/from16 v8, p2

    goto :goto_763

    .line 1252
    :cond_759
    :try_start_759
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide/from16 v8, p2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_763
    cmp-long v4, v2, v8

    if-lez v4, :cond_782

    long-to-double v2, v2

    move-object/from16 v5, p8

    .line 1256
    invoke-virtual {v0, v2, v3, v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 1257
    iget-wide v6, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->z:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_780

    .line 1258
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v4
    :try_end_777
    .catch Ljava/lang/Exception; {:try_start_759 .. :try_end_777} :catch_77c

    const/4 v6, 0x1

    :try_start_778
    invoke-virtual {v4, v6, v2, v3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    goto :goto_78c

    :catch_77c
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_107

    :cond_780
    const/4 v6, 0x1

    goto :goto_78c

    :cond_782
    move-object/from16 v5, p8

    const/4 v6, 0x1

    if-gez v4, :cond_78c

    neg-long v2, v2

    long-to-double v2, v2

    .line 1260
    invoke-virtual {v0, v2, v3, v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    :cond_78c
    :goto_78c
    if-eqz p7, :cond_7a2

    .line 1262
    iget-wide v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->y:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_7a2

    .line 1263
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v7, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->y:J

    long-to-double v7, v7

    add-double/2addr v2, v7

    invoke-virtual {v0, v2, v3, v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V
    :try_end_7a2
    .catch Ljava/lang/Exception; {:try_start_778 .. :try_end_7a2} :catch_106

    :cond_7a2
    move v12, v6

    goto/16 :goto_2cc

    :cond_7a5
    move-object/from16 v0, p8

    move-wide/from16 v26, v10

    move/from16 v25, v12

    const/4 v12, 0x1

    .line 1267
    :try_start_7ac
    sget v10, Linfo/flowersoft/theotown/draft/Transition;->ACTION_STAGE:I
    :try_end_7ae
    .catch Ljava/lang/Exception; {:try_start_7ac .. :try_end_7ae} :catch_5dd

    if-ne v14, v10, :cond_7eb

    .line 1268
    :try_start_7b0
    iget-wide v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->x:J

    cmp-long v4, v2, v26

    if-gtz v4, :cond_7e7

    const-wide/16 v4, -0x3e8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7e7

    if-eqz p7, :cond_7e7

    .line 1269
    sget-boolean v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v4, :cond_7e7

    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-lez v4, :cond_7da

    .line 1271
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v4

    long-to-int v2, v2

    iget-wide v5, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->y:J

    cmp-long v3, v5, v8

    if-nez v3, :cond_7d5

    move v3, v12

    goto :goto_7d6

    :cond_7d5
    const/4 v3, 0x0

    :goto_7d6
    invoke-virtual {v4, v2, v3, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    goto :goto_7e5

    :cond_7da
    if-gez v4, :cond_7e5

    .line 1273
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v4

    neg-long v2, v2

    long-to-int v2, v2

    invoke-virtual {v4, v2, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds(ILjava/lang/String;)V
    :try_end_7e5
    .catch Ljava/lang/Exception; {:try_start_7b0 .. :try_end_7e5} :catch_106

    :cond_7e5
    :goto_7e5
    move v0, v12

    goto :goto_7e8

    :cond_7e7
    const/4 v0, 0x0

    :goto_7e8
    move v12, v0

    goto/16 :goto_2cc

    .line 1277
    :cond_7eb
    :try_start_7eb
    sget v10, Linfo/flowersoft/theotown/draft/Transition;->ACTION_SET:I
    :try_end_7ed
    .catch Ljava/lang/Exception; {:try_start_7eb .. :try_end_7ed} :catch_5dd

    if-ne v14, v10, :cond_818

    .line 1278
    :try_start_7ef
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v0, :cond_5e2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e2

    .line 1279
    iget-wide v13, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->x:J

    .line 1280
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    if-eqz v0, :cond_811

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_811

    move-wide v9, v2

    .line 1281
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    move/from16 v11, p6

    move-wide/from16 v3, v21

    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v2

    add-long/2addr v13, v2

    .line 1284
    :cond_811
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v13, v14}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->applyValue(Ljava/lang/String;J)V
    :try_end_816
    .catch Ljava/lang/Exception; {:try_start_7ef .. :try_end_816} :catch_106

    goto/16 :goto_2cc

    :cond_818
    move-wide v10, v2

    move-wide/from16 v26, v5

    move-wide/from16 v28, v7

    .line 1287
    :try_start_81d
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ACHIEVEMENT:I
    :try_end_81f
    .catch Ljava/lang/Exception; {:try_start_81d .. :try_end_81f} :catch_5dd

    if-ne v14, v2, :cond_83c

    .line 1288
    :try_start_821
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v0, :cond_5e2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5e2

    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v0

    if-eqz v0, :cond_5e2

    .line 1289
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z
    :try_end_83a
    .catch Ljava/lang/Exception; {:try_start_821 .. :try_end_83a} :catch_106

    goto/16 :goto_2cc

    .line 1292
    :cond_83c
    :try_start_83c
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_OVERLAY:I
    :try_end_83e
    .catch Ljava/lang/Exception; {:try_start_83c .. :try_end_83e} :catch_5dd

    if-ne v14, v2, :cond_84f

    .line 1293
    :try_start_840
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWeather;

    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultWeather;->setOverlay(Ljava/lang/String;)V
    :try_end_84d
    .catch Ljava/lang/Exception; {:try_start_840 .. :try_end_84d} :catch_106

    goto/16 :goto_2cc

    .line 1295
    :cond_84f
    :try_start_84f
    sget v2, Linfo/flowersoft/theotown/draft/Transition;->ACTION_LINE:I
    :try_end_851
    .catch Ljava/lang/Exception; {:try_start_84f .. :try_end_851} :catch_5dd

    if-ne v14, v2, :cond_892

    move v11, v12

    move/from16 v14, v17

    const/4 v13, 0x0

    :goto_857
    if-ge v13, v14, :cond_88f

    .line 1298
    :try_start_859
    invoke-static/range {v20 .. v20}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    mul-int/2addr v2, v13

    int-to-long v2, v2

    add-long v3, v21, v2

    long-to-int v3, v3

    .line 1299
    invoke-static/range {v20 .. v20}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    mul-int/2addr v2, v13

    int-to-long v4, v2

    add-long v5, v26, v4

    long-to-int v4, v5

    .line 1300
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->innerActions:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Action;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object v9, v0

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z

    move-result v0
    :try_end_883
    .catch Ljava/lang/Exception; {:try_start_859 .. :try_end_883} :catch_88b

    and-int/2addr v11, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p8

    goto :goto_857

    :catch_88b
    move-exception v0

    move v12, v11

    goto/16 :goto_108

    :cond_88f
    :goto_88f
    move v12, v11

    goto/16 :goto_2cc

    .line 1302
    :cond_892
    :try_start_892
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_RECT:I
    :try_end_894
    .catch Ljava/lang/Exception; {:try_start_892 .. :try_end_894} :catch_5dd

    if-ne v14, v0, :cond_8da

    mul-long v8, v28, v10

    long-to-int v0, v8

    move v11, v12

    const/4 v13, 0x0

    :goto_89b
    if-ge v13, v0, :cond_8d7

    int-to-long v1, v13

    .line 1306
    :try_start_89e
    rem-long v3, v1, v28

    add-long v3, v21, v3

    long-to-int v3, v3

    .line 1307
    div-long v1, v1, v28

    add-long v5, v26, v1

    long-to-int v4, v5

    .line 1308
    iget-object v1, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->innerActions:Ljava/util/List;
    :try_end_8aa
    .catch Ljava/lang/Exception; {:try_start_89e .. :try_end_8aa} :catch_8d2

    const/4 v14, 0x0

    :try_start_8ab
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition$Action;
    :try_end_8b2
    .catch Ljava/lang/Exception; {:try_start_8ab .. :try_end_8b2} :catch_8ce

    move-object/from16 v1, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    :try_start_8c0
    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z

    move-result v2
    :try_end_8c4
    .catch Ljava/lang/Exception; {:try_start_8c0 .. :try_end_8c4} :catch_8c8

    and-int/2addr v11, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_89b

    :catch_8c8
    move-exception v0

    :goto_8c9
    move v12, v11

    move/from16 v16, v14

    goto/16 :goto_be4

    :catch_8ce
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_8c9

    :catch_8d2
    move-exception v0

    move-object/from16 v1, p0

    const/4 v14, 0x0

    goto :goto_8c9

    :cond_8d7
    move-object/from16 v1, p0

    goto :goto_88f

    :cond_8da
    move-object/from16 v1, p0

    const/16 v16, 0x0

    .line 1310
    :try_start_8de
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_RND:I
    :try_end_8e0
    .catch Ljava/lang/Exception; {:try_start_8de .. :try_end_8e0} :catch_76

    if-ne v14, v0, :cond_8f5

    .line 1312
    :try_start_8e2
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget v3, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->applyValue(Ljava/lang/String;J)V
    :try_end_8f0
    .catch Ljava/lang/Exception; {:try_start_8e2 .. :try_end_8f0} :catch_8f2

    goto/16 :goto_bee

    :catch_8f2
    move-exception v0

    goto/16 :goto_be4

    .line 1313
    :cond_8f5
    :try_start_8f5
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_TRANSLATE:I

    if-ne v14, v0, :cond_922

    .line 1314
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/TranslationDraft;

    .line 1315
    sget-object v2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-eqz v0, :cond_91e

    if-eqz v2, :cond_91e

    .line 1317
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/TranslationDraft;->translation:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->addRuntimeLocalizationPatch(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 1318
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getEffectiveLocalizationPatches()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->setLanguage(Ljava/util/Locale;Ljava/util/List;)V

    :cond_91b
    :goto_91b
    move v0, v12

    goto/16 :goto_6ac

    :cond_91e
    move/from16 v0, v16

    goto/16 :goto_6ac

    .line 1321
    :cond_922
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_WEBSITE:I

    if-ne v14, v0, :cond_945

    .line 1322
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz p7, :cond_91e

    if-eqz v2, :cond_91e

    .line 1323
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_930
    .catch Ljava/lang/Exception; {:try_start_8f5 .. :try_end_930} :catch_76

    if-nez v0, :cond_91e

    .line 1325
    :try_start_932
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    move-wide v9, v10

    move-wide/from16 v3, v21

    move/from16 v11, v25

    move-wide/from16 v5, v26

    move-wide/from16 v7, v28

    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V
    :try_end_944
    .catch Ljava/lang/Exception; {:try_start_932 .. :try_end_944} :catch_8f2

    goto :goto_91b

    :cond_945
    move-wide v9, v10

    move/from16 v11, v25

    move-wide/from16 v5, v26

    move-wide/from16 v7, v28

    .line 1327
    :try_start_94c
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ABANDON:I

    if-ne v14, v0, :cond_970

    if-eqz v18, :cond_5e4

    .line 1329
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_91e

    .line 1331
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_961

    move v2, v12

    goto :goto_963

    :cond_961
    move/from16 v2, v16

    :goto_963
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->getUnknown()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->setEmpty(ZLinfo/flowersoft/theotown/city/objects/EmptyBuildingCause;)V

    .line 1332
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    goto/16 :goto_6ac

    .line 1335
    :cond_970
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_LANGUAGE:I

    if-ne v14, v0, :cond_9a6

    .line 1336
    iget-object v3, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    .line 1337
    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97f

    const/4 v3, 0x0

    :cond_97f
    if-eqz v3, :cond_987

    .line 1338
    new-instance v13, Ljava/util/Locale;

    invoke-direct {v13, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_988

    :cond_987
    const/4 v13, 0x0

    .line 1339
    :goto_988
    sget-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-eqz v0, :cond_91e

    .line 1341
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getEffectiveLocalizationPatches()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->setLanguage(Ljava/util/Locale;Ljava/util/List;)V

    .line 1342
    sput-object v13, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    .line 1343
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getEffectiveLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->applyFontLocale(Ljava/util/Locale;)V

    goto/16 :goto_91b

    .line 1346
    :cond_9a6
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_LOAD_CITY:I

    if-ne v14, v0, :cond_9b1

    .line 1348
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    goto/16 :goto_5e4

    .line 1353
    :cond_9b1
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ANIMATION_RESUME:I

    if-ne v14, v0, :cond_9ed

    if-eqz v18, :cond_5e4

    .line 1355
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v0

    .line 1356
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->level:I

    if-gez v2, :cond_9c9

    move/from16 v2, v16

    .line 1358
    :cond_9c9
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_91e

    .line 1359
    iget-object v4, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v4, :cond_9df

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91e

    :cond_9df
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1360
    invoke-virtual {v3, v2, v4, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameSpeed(IFI)V

    .line 1361
    iget v4, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-ltz v4, :cond_91b

    invoke-virtual {v3, v2, v4, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameOffset(III)V

    goto/16 :goto_91b

    .line 1365
    :cond_9ed
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ANIMATION_PAUSE:I

    if-ne v14, v0, :cond_a28

    if-eqz v18, :cond_5e4

    .line 1367
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v0

    .line 1368
    iget v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->level:I

    if-gez v2, :cond_a05

    move/from16 v2, v16

    .line 1370
    :cond_a05
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v4, v13}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_91e

    .line 1371
    iget-object v4, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v4, :cond_a1b

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91e

    :cond_a1b
    const/4 v4, 0x0

    .line 1372
    invoke-virtual {v3, v2, v4, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameSpeed(IFI)V

    .line 1373
    iget v4, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    if-ltz v4, :cond_91b

    invoke-virtual {v3, v2, v4, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameOffset(III)V

    goto/16 :goto_91b

    .line 1377
    :cond_a28
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ANALYTICS_EVENT:I

    if-ne v14, v0, :cond_a49

    .line 1378
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v13, "Transition Runner"

    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    move/from16 v11, p6

    move-wide/from16 v3, v21

    .line 1379
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v11, p6

    .line 1380
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v2

    .line 1378
    invoke-interface {v0, v13, v14, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bee

    .line 1382
    :cond_a49
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_FEEDBACK:I
    :try_end_a4b
    .catch Ljava/lang/Exception; {:try_start_94c .. :try_end_a4b} :catch_76

    if-ne v14, v0, :cond_a62

    .line 1383
    :try_start_a4d
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;
    :try_end_a4f
    .catch Ljava/lang/Exception; {:try_start_a4d .. :try_end_a4f} :catch_a5d

    move-object/from16 v1, p0

    move/from16 v11, p6

    move-wide/from16 v3, v21

    :try_start_a55
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->lastFeedback:Ljava/lang/String;

    goto/16 :goto_bee

    :catch_a5d
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_77

    :cond_a62
    move-object/from16 v1, p0

    .line 1385
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_ALTER_DRAFT:I

    if-ne v14, v0, :cond_bae

    if-eqz p7, :cond_5e4

    .line 1387
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    const-string v2, "[.]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1388
    const-string v2, ""

    move/from16 v13, v16

    .line 1389
    :goto_a76
    array-length v3, v0

    if-ge v13, v3, :cond_5e4

    if-lez v13, :cond_a8c

    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1391
    :cond_a8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v13

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1392
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v3, :cond_ba4

    add-int/2addr v13, v12

    move v14, v13

    move-object v13, v3

    .line 1395
    :goto_aaa
    array-length v2, v0

    if-ge v14, v2, :cond_b9f

    .line 1396
    aget-object v2, v0, v14

    .line 1397
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1398
    array-length v3, v0

    sub-int/2addr v3, v12

    if-ne v14, v3, :cond_b8d

    move-object v3, v2

    .line 1399
    iget-object v2, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    move/from16 v11, p6

    move-object/from16 p2, v3

    move-wide/from16 v3, v21

    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_adc

    move-object/from16 v1, p2

    .line 1401
    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_ad9
    const/4 v12, 0x0

    goto/16 :goto_b96

    :cond_adc
    move-object/from16 v1, p2

    .line 1402
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_af6

    .line 1403
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ad9

    .line 1404
    :cond_af6
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b0e

    .line 1405
    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ad9

    .line 1406
    :cond_b0e
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b26

    .line 1407
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ad9

    .line 1408
    :cond_b26
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b3e

    .line 1409
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ad9

    .line 1410
    :cond_b3e
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b56

    .line 1411
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_ad9

    .line 1412
    :cond_b56
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b6f

    .line 1413
    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_ad9

    .line 1414
    :cond_b6f
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b88

    .line 1415
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_ad9

    :cond_b88
    const/4 v12, 0x0

    .line 1417
    invoke-virtual {v1, v13, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b96

    :cond_b8d
    move-object v1, v2

    move-wide/from16 v3, v21

    const/4 v12, 0x0

    .line 1420
    invoke-virtual {v1, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_b95
    .catch Ljava/lang/Exception; {:try_start_a55 .. :try_end_b95} :catch_76

    move-object v13, v1

    :goto_b96
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v21, v3

    const/4 v12, 0x1

    goto/16 :goto_aaa

    .line 1424
    :cond_b9f
    :try_start_b9f
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V
    :try_end_ba2
    .catch Ljava/lang/Exception; {:try_start_b9f .. :try_end_ba2} :catch_725

    goto/16 :goto_5da

    :cond_ba4
    move-wide/from16 v3, v21

    const/4 v12, 0x0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    const/4 v12, 0x1

    goto/16 :goto_a76

    :cond_bae
    const/4 v12, 0x0

    .line 1429
    :try_start_baf
    sget v0, Linfo/flowersoft/theotown/draft/Transition;->ACTION_CALL:I

    if-ne v14, v0, :cond_5e4

    .line 1430
    iget-object v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->id:Ljava/lang/String;

    if-eqz v0, :cond_bbe

    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v12, v0

    :cond_bbe
    if-eqz v12, :cond_bcb

    .line 1433
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    iget-object v1, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    goto :goto_bd5

    .line 1435
    :cond_bcb
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    iget-object v1, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    :goto_bd5
    if-eqz v0, :cond_5e4

    .line 1437
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_5e4

    .line 1438
    iget v1, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->frame:I

    invoke-virtual {v0, v4, v13, v11, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z
    :try_end_be2
    .catch Ljava/lang/Exception; {:try_start_baf .. :try_end_be2} :catch_76

    goto/16 :goto_5da

    .line 1443
    :goto_be4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1444
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Action"

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1446
    :goto_bee
    iget-boolean v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->invert:Z

    xor-int/2addr v0, v12

    if-nez v0, :cond_bfb

    iget-boolean v0, v15, Linfo/flowersoft/theotown/draft/Transition$Action;->ignoreSuccess:Z

    if-eqz v0, :cond_bf8

    goto :goto_bfb

    :cond_bf8
    move/from16 v12, v16

    goto :goto_bfc

    :cond_bfb
    :goto_bfb
    const/4 v12, 0x1

    :goto_bfc
    return v12
.end method

.method public doActions(Ljava/util/List;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition$Action;",
            ">;IIIIIZ",
            "Ljava/lang/String;",
            "Lvm2/LuaValue;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 271
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 272
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Linfo/flowersoft/theotown/draft/Transition$Action;

    move-object v3, p0

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z

    move-result v2

    if-nez v2, :cond_26

    return v0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public final evaluateValue(Ljava/lang/String;JJJJI)J
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_11

    .line 1472
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_11
    move-wide v15, v5

    goto/16 :goto_2a9

    .line 1475
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2b

    move v9, v3

    move-wide v10, v5

    move v12, v8

    .line 1476
    :goto_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v4

    if-ge v9, v13, :cond_2a8

    .line 1477
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v9, v13, :cond_30

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_31

    :cond_30
    move v13, v8

    .line 1478
    :goto_31
    invoke-static {v13}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v14

    if-eqz v14, :cond_3c

    move/from16 v14, p10

    move-wide v15, v5

    goto/16 :goto_2a3

    .line 1480
    :cond_3c
    invoke-static {v13}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v14

    if-nez v14, :cond_52

    const/16 v14, 0x5f

    if-eq v13, v14, :cond_52

    const/16 v14, 0x24

    if-eq v13, v14, :cond_52

    const/16 v14, 0x21

    if-eq v13, v14, :cond_52

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_57

    :cond_52
    move/from16 v14, p10

    move-wide v15, v5

    goto/16 :goto_29c

    .line 1485
    :cond_57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1486
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2aa

    :goto_65
    const/4 v15, -0x1

    goto/16 :goto_174

    :sswitch_68
    const-string v15, "money"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_71

    goto :goto_65

    :cond_71
    const/16 v15, 0x14

    goto/16 :goto_174

    :sswitch_75
    const-string v15, "false"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7e

    goto :goto_65

    :cond_7e
    const/16 v15, 0x13

    goto/16 :goto_174

    :sswitch_82
    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8b

    goto :goto_65

    :cond_8b
    const/16 v15, 0x12

    goto/16 :goto_174

    :sswitch_8f
    const-string v15, "res2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_98

    goto :goto_65

    :cond_98
    const/16 v15, 0x11

    goto/16 :goto_174

    :sswitch_9c
    const-string v15, "res1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a5

    goto :goto_65

    :cond_a5
    const/16 v15, 0x10

    goto/16 :goto_174

    :sswitch_a9
    const-string v15, "res0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b2

    goto :goto_65

    :cond_b2
    const/16 v15, 0xf

    goto/16 :goto_174

    :sswitch_b6
    const-string v15, "ind2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bf

    goto :goto_65

    :cond_bf
    const/16 v15, 0xe

    goto/16 :goto_174

    :sswitch_c3
    const-string v15, "ind1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_cc

    goto :goto_65

    :cond_cc
    const/16 v15, 0xd

    goto/16 :goto_174

    :sswitch_d0
    const-string v15, "ind0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d9

    goto :goto_65

    :cond_d9
    const/16 v15, 0xc

    goto/16 :goto_174

    :sswitch_dd
    const-string v15, "com2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e7

    goto/16 :goto_65

    :cond_e7
    const/16 v15, 0xb

    goto/16 :goto_174

    :sswitch_eb
    const-string v15, "com1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f5

    goto/16 :goto_65

    :cond_f5
    const/16 v15, 0xa

    goto/16 :goto_174

    :sswitch_f9
    const-string v15, "com0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_103

    goto/16 :goto_65

    :cond_103
    const/16 v15, 0x9

    goto/16 :goto_174

    :sswitch_107
    const-string v15, "res"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_111

    goto/16 :goto_65

    :cond_111
    const/16 v15, 0x8

    goto/16 :goto_174

    :sswitch_115
    const-string v15, "lvl"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11f

    goto/16 :goto_65

    :cond_11f
    const/4 v15, 0x7

    goto :goto_174

    :sswitch_121
    const-string v15, "ind"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12b

    goto/16 :goto_65

    :cond_12b
    const/4 v15, 0x6

    goto :goto_174

    :sswitch_12d
    const-string v15, "com"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_137

    goto/16 :goto_65

    :cond_137
    const/4 v15, 0x5

    goto :goto_174

    :sswitch_139
    const-string v15, "y"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_143

    goto/16 :goto_65

    :cond_143
    const/4 v15, 0x4

    goto :goto_174

    :sswitch_145
    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14f

    goto/16 :goto_65

    :cond_14f
    const/4 v15, 0x3

    goto :goto_174

    :sswitch_151
    const-string v15, "w"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15b

    goto/16 :goto_65

    :cond_15b
    move v15, v2

    goto :goto_174

    :sswitch_15d
    const-string v15, "h"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_167

    goto/16 :goto_65

    :cond_167
    move v15, v4

    goto :goto_174

    :sswitch_169
    const-string v15, "income"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_173

    goto/16 :goto_65

    :cond_173
    move v15, v3

    :goto_174
    packed-switch v15, :pswitch_data_300

    .line 1565
    invoke-virtual {v0, v14, v5, v6}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->parseValue(Ljava/lang/String;J)J

    move-result-wide v14

    :goto_17b
    move-wide/from16 v17, v14

    move-wide v15, v5

    move-wide/from16 v5, v17

    move/from16 v14, p10

    goto/16 :goto_275

    .line 1548
    :pswitch_184
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v14

    check-cast v14, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 1549
    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v14

    .line 1548
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    goto :goto_17b

    :pswitch_195
    move/from16 v14, p10

    move-wide v15, v5

    goto/16 :goto_275

    :pswitch_19a
    const-wide/16 v14, 0x1

    goto :goto_17b

    .line 1504
    :pswitch_19d
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v14, v2}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v14

    :goto_1a3
    int-to-long v14, v14

    goto :goto_17b

    .line 1501
    :pswitch_1a5
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v14, v4}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v14

    goto :goto_1a3

    .line 1498
    :pswitch_1ac
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v14, v3}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v14

    goto :goto_1a3

    .line 1534
    :pswitch_1b3
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v14

    goto :goto_1a3

    .line 1531
    :pswitch_1be
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v14

    invoke-virtual {v14, v4, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v14

    goto :goto_1a3

    .line 1528
    :pswitch_1c9
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v14

    invoke-virtual {v14, v3, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v14

    goto :goto_1a3

    .line 1519
    :pswitch_1d4
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v14

    goto :goto_1a3

    .line 1516
    :pswitch_1df
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v14

    invoke-virtual {v14, v4, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v14

    goto :goto_1a3

    .line 1513
    :pswitch_1ea
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v14

    invoke-virtual {v14, v3, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v14

    goto :goto_1a3

    .line 1495
    :pswitch_1f5
    iget-object v14, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v14

    goto :goto_1a3

    :pswitch_1fc
    move/from16 v14, p10

    move-wide v15, v5

    int-to-long v5, v14

    goto/16 :goto_275

    :pswitch_202
    move/from16 v14, p10

    move-wide v15, v5

    .line 1523
    iget-object v5, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v5

    iget-object v6, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 1524
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 1525
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v6

    :goto_224
    add-int/2addr v5, v6

    int-to-long v5, v5

    goto :goto_275

    :pswitch_227
    move/from16 v14, p10

    move-wide v15, v5

    .line 1508
    iget-object v5, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v5

    invoke-virtual {v5, v3, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v5

    iget-object v6, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 1509
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 1510
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v6

    goto :goto_224

    :pswitch_24a
    move/from16 v14, p10

    move-wide v15, v5

    move-wide/from16 v5, p4

    goto :goto_275

    :pswitch_250
    move/from16 v14, p10

    move-wide v15, v5

    move-wide/from16 v5, p2

    goto :goto_275

    :pswitch_256
    move/from16 v14, p10

    move-wide v15, v5

    move-wide/from16 v5, p6

    goto :goto_275

    :pswitch_25c
    move/from16 v14, p10

    move-wide v15, v5

    move-wide/from16 v5, p8

    goto :goto_275

    :pswitch_262
    move/from16 v14, p10

    move-wide v15, v5

    .line 1553
    iget-object v5, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 1554
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMonthlyIncome()D

    move-result-wide v5

    .line 1553
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    :goto_275
    const/16 v2, 0x25

    if-eq v12, v2, :cond_296

    const/16 v2, 0x2d

    if-eq v12, v2, :cond_294

    const/16 v2, 0x2f

    if-eq v12, v2, :cond_292

    const/16 v2, 0x5e

    if-eq v12, v2, :cond_290

    const/16 v2, 0x2a

    if-eq v12, v2, :cond_28e

    if-eq v12, v8, :cond_28c

    goto :goto_297

    :cond_28c
    add-long/2addr v10, v5

    goto :goto_297

    :cond_28e
    mul-long/2addr v10, v5

    goto :goto_297

    :cond_290
    xor-long/2addr v10, v5

    goto :goto_297

    .line 1580
    :cond_292
    div-long/2addr v10, v5

    goto :goto_297

    :cond_294
    sub-long/2addr v10, v5

    goto :goto_297

    .line 1583
    :cond_296
    rem-long/2addr v10, v5

    .line 1591
    :goto_297
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v12, v13

    goto :goto_2a3

    :goto_29c
    const/16 v2, 0x20

    if-eq v13, v2, :cond_2a3

    .line 1481
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2a3
    :goto_2a3
    add-int/2addr v9, v4

    move-wide v5, v15

    const/4 v2, 0x2

    goto/16 :goto_1e

    :cond_2a8
    return-wide v10

    :goto_2a9
    return-wide v15

    :sswitch_data_2aa
    .sparse-switch
        -0x46965e57 -> :sswitch_169
        0x68 -> :sswitch_15d
        0x77 -> :sswitch_151
        0x78 -> :sswitch_145
        0x79 -> :sswitch_139
        0x18181 -> :sswitch_12d
        0x197df -> :sswitch_121
        0x1a422 -> :sswitch_115
        0x1b8a0 -> :sswitch_107
        0x2eaecf -> :sswitch_f9
        0x2eaed0 -> :sswitch_eb
        0x2eaed1 -> :sswitch_dd
        0x316431 -> :sswitch_d0
        0x316432 -> :sswitch_c3
        0x316433 -> :sswitch_b6
        0x355b90 -> :sswitch_a9
        0x355b91 -> :sswitch_9c
        0x355b92 -> :sswitch_8f
        0x36758e -> :sswitch_82
        0x5cb1923 -> :sswitch_75
        0x63420c0 -> :sswitch_68
    .end sparse-switch

    :pswitch_data_300
    .packed-switch 0x0
        :pswitch_262
        :pswitch_25c
        :pswitch_256
        :pswitch_250
        :pswitch_24a
        :pswitch_227
        :pswitch_202
        :pswitch_1fc
        :pswitch_1f5
        :pswitch_1ea
        :pswitch_1df
        :pswitch_1d4
        :pswitch_1c9
        :pswitch_1be
        :pswitch_1b3
        :pswitch_1ac
        :pswitch_1a5
        :pswitch_19d
        :pswitch_19a
        :pswitch_195
        :pswitch_184
    .end packed-switch
.end method

.method public getLastFeedback()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->lastFeedback:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransitionProbability(Linfo/flowersoft/theotown/draft/Transition;JJ)F
    .registers 6

    if-eqz p1, :cond_1a

    .line 266
    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/Transition;->fixedProbability:Z

    if-nez p1, :cond_7

    goto :goto_1a

    .line 267
    :cond_7
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    long-to-int p2, p2

    long-to-int p3, p4

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/City;->hashCode(II)I

    move-result p1

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    rem-int/lit16 p1, p1, 0x3e8

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    return p1

    .line 266
    :cond_1a
    :goto_1a
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    return p1
.end method

.method public final getVirtualVariables()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->virtualVariables:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    new-instance v1, Linfo/flowersoft/theotown/components/transition/VariableCollector;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2, v0}, Linfo/flowersoft/theotown/components/transition/VariableCollector;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/Map;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transition/VariableCollector;->collect()V

    .line 131
    iput-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->virtualVariables:Ljava/util/Map;

    .line 133
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->virtualVariables:Ljava/util/Map;

    return-object v0
.end method

.method public interpolateString(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-wide/16 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 1454
    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public interpolateString(Ljava/lang/String;JJJJI)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p1

    .line 1458
    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->isInterpolatedString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1459
    sget-object v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->STRING_INTERPOLATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1460
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1461
    :goto_13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move-object/from16 p1, v0

    move-object v3, v1

    invoke-virtual/range {v4 .. v14}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->evaluateValue(Ljava/lang/String;JJJJI)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v3, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-object v0, v1

    move-object v1, v3

    goto :goto_13

    :cond_49
    move-object v3, v1

    move-object v1, v0

    .line 1464
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1465
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_52
    return-object v0
.end method

.method public parseValue(Ljava/lang/String;J)J
    .registers 5

    .line 1600
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p1

    .line 1602
    :catch_5
    invoke-static {p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->isGlobalVar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1603
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->get(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_40

    .line 1605
    :cond_14
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->getVirtualVariables()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/blueflower/stapel2d/util/Property;

    if-eqz p2, :cond_2b

    .line 1607
    invoke-interface {p2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_40

    .line 1609
    :cond_2b
    iget-object p2, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_3e

    .line 1611
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_40

    :cond_3e
    const-wide/16 p1, 0x0

    :goto_40
    return-wide p1
.end method

.method public final resolveRoad(IILjava/lang/String;I)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 7

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    if-ltz p4, :cond_13

    .line 282
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    goto :goto_43

    .line 284
    :cond_13
    iget-object p4, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p4

    if-eqz p4, :cond_29

    if-eqz p3, :cond_29

    .line 285
    iget-object v0, p4, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    move-object p4, v1

    :cond_29
    if-nez p4, :cond_33

    .line 286
    iget-object p4, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    goto :goto_34

    :cond_33
    move-object p1, p4

    :goto_34
    if-eqz p1, :cond_43

    if-eqz p3, :cond_43

    .line 287
    iget-object p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_43

    move-object p1, v1

    :cond_43
    :goto_43
    if-eqz p1, :cond_52

    if-eqz p3, :cond_52

    .line 289
    iget-object p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_52

    return-object v1

    :cond_52
    return-object p1
.end method

.method public run()V
    .registers 26

    move-object/from16 v1, p0

    .line 168
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 169
    iget-object v14, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v14

    const/4 v15, 0x0

    .line 171
    :goto_e
    :try_start_e
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_da

    .line 172
    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Transition;

    .line 173
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSources:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    .line 174
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSenders:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lvm2/LuaValue;

    mul-int/lit8 v3, v15, 0x6

    .line 177
    iget-object v4, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 178
    iget-object v5, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    .line 179
    iget-object v6, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    .line 180
    iget-object v7, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    .line 181
    iget-object v8, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v9, v3, 0x4

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v11

    .line 182
    iget-object v8, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    const/4 v8, 0x1

    if-lez v3, :cond_67

    move/from16 v17, v8

    goto :goto_69

    :cond_67
    const/16 v17, 0x0

    .line 183
    :goto_69
    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionResults:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v15}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-ne v3, v8, :cond_72

    goto :goto_73

    :cond_72
    const/4 v8, 0x0

    .line 185
    :goto_73
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Transition;->doubleCheck:Z
    :try_end_75
    .catchall {:try_start_e .. :try_end_75} :catchall_d8

    if-eqz v3, :cond_ad

    move-object v3, v2

    .line 186
    :try_start_78
    iget-object v2, v3, Linfo/flowersoft/theotown/draft/Transition;->condition:Linfo/flowersoft/theotown/draft/Transition$Condition;

    move-object v9, v3

    move v12, v4

    int-to-long v3, v12

    int-to-long v0, v5

    move-wide/from16 v18, v0

    int-to-long v0, v6

    move-object v13, v9

    move-object/from16 v20, v10

    int-to-long v9, v7

    move/from16 v21, v12

    const/4 v12, 0x0

    move/from16 v22, v15

    move v15, v8

    move-wide/from16 v23, v0

    move-object/from16 v1, p0

    move-object v0, v13

    move-object/from16 v13, v20

    move/from16 v20, v7

    move-wide/from16 v7, v23

    move-wide/from16 v23, v18

    move/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v5, v23

    invoke-virtual/range {v1 .. v13}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->checkCondition(Linfo/flowersoft/theotown/draft/Transition$Condition;JJJJILjava/lang/String;Lvm2/LuaValue;)Z

    move-result v2

    move v7, v11

    move-object v10, v13

    if-eq v2, v15, :cond_ba

    move-object/from16 v1, p0

    goto :goto_d4

    :catchall_a9
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_ff

    :cond_ad
    move-object v0, v2

    move/from16 v21, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move v7, v11

    move/from16 v22, v15

    move v15, v8

    :cond_ba
    if-eqz v15, :cond_ce

    .line 191
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Transition;->actions:Ljava/util/List;

    :goto_be
    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v9, v16

    move/from16 v8, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v3, v21

    goto :goto_d1

    :cond_ce
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Transition;->elseActions:Ljava/util/List;
    :try_end_d0
    .catchall {:try_start_78 .. :try_end_d0} :catchall_a9

    goto :goto_be

    .line 192
    :goto_d1
    :try_start_d1
    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doActions(Ljava/util/List;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z

    :goto_d4
    add-int/lit8 v15, v22, 0x1

    goto/16 :goto_e

    :catchall_d8
    move-exception v0

    goto :goto_ff

    .line 194
    :cond_da
    monitor-exit v14
    :try_end_db
    .catchall {:try_start_d1 .. :try_end_db} :catchall_d8

    .line 196
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionSenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionArgs:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 200
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->finalActionResults:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 201
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->selectedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 202
    iget-object v0, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->visitedAmount:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    return-void

    .line 194
    :goto_ff
    :try_start_ff
    monitor-exit v14
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_d8

    throw v0

    :cond_101
    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.TransitionRunner.AnonymousClass1 (info.flowersoft.theotown.components.transition.TransitionRunner$1)
.class Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "TransitionRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final synthetic val$h:J

.field public final synthetic val$lvl:I

.field public final synthetic val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

.field public final synthetic val$privileged:Z

.field public final synthetic val$source:Ljava/lang/String;

.field public final synthetic val$w:J

.field public final synthetic val$x:J

.field public final synthetic val$y:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/NotificationDraft;JJJJILjava/lang/String;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1080
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iput-wide p4, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$x:J

    iput-wide p6, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$y:J

    iput-wide p8, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$w:J

    iput-wide p10, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$h:J

    iput p12, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$lvl:I

    iput-object p13, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$source:Ljava/lang/String;

    iput-boolean p14, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$privileged:Z

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V
    .registers 1

    .line 1080
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->close()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 1080
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V
    .registers 1

    .line 1080
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->close()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 1080
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 1083
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 1084
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/NotificationDraft;->question:Z

    if-eqz v1, :cond_29

    .line 1085
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    new-instance v3, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;-><init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1100
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    new-instance v4, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;-><init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V

    invoke-direct {v1, v3, v4}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_29
    return-object v0
.end method

###### Class info.flowersoft.theotown.components.transition.TransitionRunner.AnonymousClass1.RunnableC10751 (info.flowersoft.theotown.components.transition.TransitionRunner$1$1)
.class Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;
.super Ljava/lang/Object;
.source "TransitionRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1085
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 1088
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->applyValue(Ljava/lang/String;J)V

    .line 1089
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->access$000(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V

    .line 1091
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/NotificationDraft;->cancelFun:Ljava/util/List;

    if-eqz v1, :cond_4d

    .line 1092
    new-instance v2, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->access$100(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1093
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$1;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iget-object v4, v3, Linfo/flowersoft/theotown/draft/NotificationDraft;->cancelFun:Ljava/util/List;

    move-object v6, v4

    iget-wide v4, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$x:J

    move-object v8, v6

    iget-wide v6, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$y:J

    move-object v10, v8

    iget-wide v8, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$w:J

    move-object v12, v10

    iget-wide v10, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$h:J

    move-object v13, v12

    iget v12, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$lvl:I

    iget-object v14, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$source:Ljava/lang/String;

    iget-object v15, v3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$privileged:Z

    move-object v3, v13

    const-string v13, ""

    move/from16 v16, v1

    invoke-virtual/range {v2 .. v16}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 1096
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    :cond_4d
    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.TransitionRunner.AnonymousClass1.AnonymousClass2 (info.flowersoft.theotown.components.transition.TransitionRunner$1$2)
.class Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;
.super Ljava/lang/Object;
.source "TransitionRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1100
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 1103
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    iget-object v2, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v1, v3, v4}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->applyValue(Ljava/lang/String;J)V

    .line 1104
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->access$200(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)V

    .line 1106
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/NotificationDraft;->okFun:Ljava/util/List;

    if-eqz v1, :cond_4d

    .line 1107
    new-instance v2, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->access$300(Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1108
    iget-object v1, v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1$2;->this$1:Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;

    iget-object v3, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iget-object v4, v3, Linfo/flowersoft/theotown/draft/NotificationDraft;->okFun:Ljava/util/List;

    move-object v6, v4

    iget-wide v4, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$x:J

    move-object v8, v6

    iget-wide v6, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$y:J

    move-object v10, v8

    iget-wide v8, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$w:J

    move-object v12, v10

    iget-wide v10, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$h:J

    move-object v13, v12

    iget v12, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$lvl:I

    iget-object v14, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$source:Ljava/lang/String;

    iget-object v15, v3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner$1;->val$privileged:Z

    move-object v3, v13

    const-string v13, ""

    move/from16 v16, v1

    invoke-virtual/range {v2 .. v16}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 1111
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    :cond_4d
    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.TransitionRunner.AnonymousClass2 (info.flowersoft.theotown.components.transition.TransitionRunner$2)
.class Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;
.super Ljava/lang/Object;
.source "TransitionRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final synthetic val$h:J

.field public final synthetic val$lvl:I

.field public final synthetic val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

.field public final synthetic val$privileged:Z

.field public final synthetic val$source:Ljava/lang/String;

.field public final synthetic val$w:J

.field public final synthetic val$x:J

.field public final synthetic val$y:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner;Linfo/flowersoft/theotown/draft/NotificationDraft;JJJJILjava/lang/String;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1128
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    iput-wide p3, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$x:J

    iput-wide p5, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$y:J

    iput-wide p7, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$w:J

    iput-wide p9, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$h:J

    iput p11, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$lvl:I

    iput-object p12, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$source:Ljava/lang/String;

    iput-boolean p13, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$privileged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 1131
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->access$400(Linfo/flowersoft/theotown/components/transition/TransitionRunner;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1132
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$nDraft:Linfo/flowersoft/theotown/draft/NotificationDraft;

    move-object v2, v1

    iget-object v1, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->cancelFun:Ljava/util/List;

    move-object v4, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$x:J

    move-object v6, v4

    iget-wide v4, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$y:J

    move-object v8, v6

    iget-wide v6, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$w:J

    move-object v10, v8

    iget-wide v8, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$h:J

    move-object v11, v10

    iget v10, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$lvl:I

    iget-object v12, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$source:Ljava/lang/String;

    iget-object v13, v11, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    iget-boolean v14, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$2;->val$privileged:Z

    const-string v11, ""

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 1135
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transition.TransitionRunner.AnonymousClass3 (info.flowersoft.theotown.components.transition.TransitionRunner$3)
.class Linfo/flowersoft/theotown/components/transition/TransitionRunner$3;
.super Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;
.source "TransitionRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/transition/TransitionRunner;->doAction(Linfo/flowersoft/theotown/draft/Transition$Action;IIIIIZLjava/lang/String;Lvm2/LuaValue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final synthetic val$finalVolume:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transition/TransitionRunner;Linfo/flowersoft/theotown/city/City;IIIIF)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1177
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$3;->this$0:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iput p7, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$3;->val$finalVolume:F

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    return-void
.end method


# virtual methods
.method public getStartRate()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVolume()F
    .registers 3

    .line 1180
    invoke-super {p0}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->getVolume()F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$3;->val$finalVolume:F

    mul-float/2addr v0, v1

    return v0
.end method

###### Class info.flowersoft.theotown.components.transition.TransitionRunner$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.transition.TransitionRunner$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->$r8$lambda$h6lPxkIwD6tVYHnzkjJZ-elH0Tw(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.components.transition.TransitionRunner$$ExternalSyntheticLambda1 (info.flowersoft.theotown.components.transition.TransitionRunner$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda1;->f$0:J

    iput-wide p3, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda1;->f$0:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/transition/TransitionRunner$$ExternalSyntheticLambda1;->f$1:J

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->$r8$lambda$RsGuIHUit4CUqTSpI0SKpCZ2vAo(JJ)[F

    move-result-object v0

    return-object v0
.end method
