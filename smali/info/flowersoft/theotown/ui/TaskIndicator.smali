###### Class info.flowersoft.theotown.ui.TaskIndicator (info.flowersoft.theotown.ui.TaskIndicator)
.class public Linfo/flowersoft/theotown/ui/TaskIndicator;
.super Lio/blueflower/stapel2d/gui/Button;
.source "TaskIndicator.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public dismissCounter:I

.field public taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
    .registers 12

    .line 41
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x3c

    :goto_c
    move v4, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :goto_10
    const/16 v5, 0x28

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 43
    iput-object p4, v1, Linfo/flowersoft/theotown/ui/TaskIndicator;->city:Linfo/flowersoft/theotown/city/City;

    .line 44
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    iput-object p1, v1, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/4 p1, 0x4

    .line 45
    invoke-virtual {p4, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    .line 46
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->getTaskManager()Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    move-result-object p1

    iput-object p1, v1, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/TaskIndicator;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->dismiss()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/TaskIndicator;)Linfo/flowersoft/theotown/components/notification/task/TaskManager;
    .registers 1

    .line 28
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/ui/TaskIndicator;I)I
    .registers 2

    .line 28
    iput p1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dismissCounter:I

    return p1
.end method

.method private static drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 21

    move-object/from16 v1, p8

    .line 204
    invoke-virtual/range {p0 .. p1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    move/from16 v3, p4

    int-to-float v6, v3

    cmpl-float v3, v2, v6

    if-lez v3, :cond_12

    div-float v2, v6, v2

    .line 207
    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 210
    :cond_12
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0x96

    .line 211
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v2, p2, 0x1

    int-to-float v4, v2

    int-to-float v5, p3

    move/from16 v2, p5

    int-to-float v7, v2

    move-object v2, p0

    move-object v3, p1

    move/from16 v8, p6

    move/from16 v9, p7

    .line 212
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v10, v5

    int-to-float v3, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v5, v1

    move-object/from16 v1, p8

    move v4, v3

    move-object v3, p1

    .line 213
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v11, v4

    add-int/lit8 p2, p2, -0x1

    int-to-float v4, p2

    move v5, v10

    .line 214
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    add-int/lit8 p2, p3, -0x1

    int-to-float v4, p2

    move-object v1, p0

    move-object v2, p1

    move/from16 v8, p7

    move-object/from16 v0, p8

    move v5, v6

    move v6, v7

    move v3, v11

    move/from16 v7, p6

    .line 215
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v1, v0

    move v7, v6

    move v6, v5

    .line 217
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p2, 0xff

    .line 218
    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v6, v7

    move v4, v10

    move-object v1, p0

    move/from16 v7, p6

    .line 219
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v1, v0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 221
    invoke-virtual {v1, p0, p0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 5

    .line 155
    iget v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dismissCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dismissCounter:I

    .line 156
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentTaskId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tasks"

    const-string v3, "dismiss"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dismissCounter:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_21

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dismissCounter:I

    .line 159
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->showDisableTasksDialog()V

    return-void

    .line 161
    :cond_21
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->dismissCurrentTask()V

    return-void
.end method

.method public draw(II)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 51
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v6, v1, v3

    .line 52
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v7, v2, v3

    .line 53
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 56
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->isActive()Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_178

    .line 58
    :cond_1c
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentTask()Linfo/flowersoft/theotown/components/notification/task/Task;

    move-result-object v3

    .line 59
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getStartValue()J

    move-result-wide v4

    .line 60
    iget-object v9, v0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getTargetValue()J

    move-result-wide v18

    .line 61
    iget-object v9, v0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentValue()J

    move-result-wide v20

    const/16 v9, 0x32

    .line 64
    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 65
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object/from16 v17, v8

    .line 66
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    int-to-float v10, v6

    iget v11, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v11, v11

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v11, v11, v22

    add-float/2addr v11, v10

    int-to-float v12, v7

    iget v13, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v13, v13

    mul-float v13, v13, v22

    add-float/2addr v13, v12

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move v14, v9

    move v9, v11

    const/4 v11, 0x0

    move/from16 v23, v12

    const/high16 v12, 0x41600000    # 14.0f

    move/from16 v24, v10

    move v10, v13

    const/4 v13, 0x0

    move/from16 v25, v14

    const v14, 0x40c90fdb

    move-object/from16 v26, v3

    move/from16 v3, v25

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v8, v17

    const/16 v9, 0x96

    .line 72
    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    sub-long v9, v20, v4

    long-to-float v11, v9

    sub-long v4, v18, v4

    long-to-float v12, v4

    div-float/2addr v11, v12

    const/4 v12, 0x0

    .line 75
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 78
    iget v11, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v11, v11

    mul-float v11, v11, v22

    const/high16 v13, 0x40800000    # 4.0f

    sub-float v13, v11, v13

    .line 81
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v14, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v14, v14

    mul-float v14, v14, v22

    add-float v14, v24, v14

    iget v15, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v15, v15

    mul-float v15, v15, v22

    add-float v15, v23, v15

    move-wide/from16 v20, v9

    move v10, v15

    const/high16 v15, 0x3f800000    # 1.0f

    move v9, v12

    move v12, v11

    move v11, v13

    const v13, 0x4027b3e1

    move/from16 v19, v9

    move v9, v14

    const v14, 0x40d9bdd9

    move/from16 v25, v6

    move/from16 v27, v7

    move-wide/from16 v6, v20

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v8, v17

    .line 88
    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 89
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v9, v9

    mul-float v9, v9, v22

    add-float v9, v24, v9

    iget v10, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v10, v10

    mul-float v10, v10, v22

    add-float v10, v23, v10

    add-float v11, v11, v19

    sub-float v12, v12, v19

    const v13, 0x402ae714

    const v14, 0x40d8243f

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v8, v17

    const/16 v9, 0xc8

    .line 97
    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 98
    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->CYAN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 99
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v9, v9

    mul-float v9, v9, v22

    add-float v9, v24, v9

    iget v10, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v10, v10

    mul-float v10, v10, v22

    add-float v10, v23, v10

    const v14, 0x4082b0b5

    mul-float v18, v18, v14

    add-float v14, v13, v18

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v8, v17

    .line 106
    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v9, 0xff

    .line 107
    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 109
    iget-object v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v9, v9, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v6, v6

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v4, v4

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    iget v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    move-object v4, v9

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v12, v17

    move/from16 v6, v25

    move/from16 v7, v27

    invoke-static/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/TaskIndicator;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v8, v12

    .line 113
    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 114
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v7, v7, -0x1

    int-to-float v11, v7

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v12, v3

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v13, v3

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-interface/range {v26 .. v26}, Linfo/flowersoft/theotown/components/notification/task/Task;->getIcon()I

    move-result v16

    const/high16 v14, 0x3f000000    # 0.5f

    move/from16 v10, v24

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 116
    sget v3, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RANK:I

    invoke-static {v3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 117
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v2, v0, v4}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_178
    :goto_178
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 197
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_TASK:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->city:Linfo/flowersoft/theotown/city/City;

    .line 198
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_22

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->cityTasks:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentTask()Linfo/flowersoft/theotown/components/notification/task/Task;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 125
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentTask()Linfo/flowersoft/theotown/components/notification/task/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->showTaskDialog(Linfo/flowersoft/theotown/components/notification/task/Task;)V

    :cond_14
    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 189
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->hasNewTask()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->cityTasks:Z

    if-eqz v0, :cond_20

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentTask()Linfo/flowersoft/theotown/components/notification/task/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->showTaskDialog(Linfo/flowersoft/theotown/components/notification/task/Task;)V

    :cond_20
    return-void
.end method

.method public final showDisableTasksDialog()V
    .registers 7

    .line 166
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa8

    .line 167
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x5d9

    .line 168
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 170
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/TaskIndicator$3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/TaskIndicator$3;-><init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 176
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc60

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/TaskIndicator$4;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/TaskIndicator$4;-><init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 184
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showTaskDialog(Linfo/flowersoft/theotown/components/notification/task/Task;)V
    .registers 11

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 133
    :cond_8
    new-instance v2, Linfo/flowersoft/theotown/ui/Dialog;

    invoke-interface {p1}, Linfo/flowersoft/theotown/components/notification/task/Task;->getIcon()I

    move-result v3

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x3e0

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-interface {p1}, Linfo/flowersoft/theotown/components/notification/task/Task;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getTargetValue()J

    move-result-wide v5

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->taskManager:Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getStartValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(D)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lio/blueflower/stapel2d/gui/Master;

    const/16 v6, 0xc8

    const/16 v7, 0x6a

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 p1, 0x1

    .line 136
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x689

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/ui/TaskIndicator$1;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/ui/TaskIndicator$1;-><init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa4

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/ui/TaskIndicator$2;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/ui/TaskIndicator$2;-><init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TaskIndicator.AnonymousClass1 (info.flowersoft.theotown.ui.TaskIndicator$1)
.class Linfo/flowersoft/theotown/ui/TaskIndicator$1;
.super Ljava/lang/Object;
.source "TaskIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/TaskIndicator;->showTaskDialog(Linfo/flowersoft/theotown/components/notification/task/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$1;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->access$000(Linfo/flowersoft/theotown/ui/TaskIndicator;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TaskIndicator.AnonymousClass2 (info.flowersoft.theotown.ui.TaskIndicator$2)
.class Linfo/flowersoft/theotown/ui/TaskIndicator$2;
.super Ljava/lang/Object;
.source "TaskIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/TaskIndicator;->showTaskDialog(Linfo/flowersoft/theotown/components/notification/task/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$2;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 147
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$2;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/TaskIndicator;->access$100(Linfo/flowersoft/theotown/ui/TaskIndicator;)Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentTaskId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tasks"

    const-string v3, "accept"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$2;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/TaskIndicator;->access$202(Linfo/flowersoft/theotown/ui/TaskIndicator;I)I

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TaskIndicator.AnonymousClass3 (info.flowersoft.theotown.ui.TaskIndicator$3)
.class Linfo/flowersoft/theotown/ui/TaskIndicator$3;
.super Ljava/lang/Object;
.source "TaskIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/TaskIndicator;->showDisableTasksDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$3;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$3;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->access$100(Linfo/flowersoft/theotown/ui/TaskIndicator;)Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->dismissCurrentTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TaskIndicator.AnonymousClass4 (info.flowersoft.theotown.ui.TaskIndicator$4)
.class Linfo/flowersoft/theotown/ui/TaskIndicator$4;
.super Ljava/lang/Object;
.source "TaskIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/TaskIndicator;->showDisableTasksDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/TaskIndicator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$4;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 179
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$4;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/TaskIndicator;->access$100(Linfo/flowersoft/theotown/ui/TaskIndicator;)Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->getCurrentTaskId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tasks"

    const-string v3, "disable"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$4;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->access$100(Linfo/flowersoft/theotown/ui/TaskIndicator;)Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->dismissCurrentTask()V

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TaskIndicator$4;->this$0:Linfo/flowersoft/theotown/ui/TaskIndicator;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/TaskIndicator;->access$100(Linfo/flowersoft/theotown/ui/TaskIndicator;)Linfo/flowersoft/theotown/components/notification/task/TaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/notification/task/TaskManager;->setDisabled(Z)V

    return-void
.end method
