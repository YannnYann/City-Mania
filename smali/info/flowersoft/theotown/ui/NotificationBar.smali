###### Class info.flowersoft.theotown.ui.NotificationBar (info.flowersoft.theotown.ui.NotificationBar)
.class public Linfo/flowersoft/theotown/ui/NotificationBar;
.super Ljava/lang/Object;
.source "NotificationBar.java"


# instance fields
.field public final NOTIFICATION_ANIMATION_TIME:I

.field public final NOTIFICATION_CMD_HEIGHT:I

.field public NOTIFICATION_CMD_WIDTH:I

.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation
.end field

.field public buildTime:J

.field public icon:I

.field public important:Z

.field public final panel:Lio/blueflower/stapel2d/gui/Panel;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;Z)V
    .registers 12

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 26
    iput v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_WIDTH:I

    .line 27
    iput v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_HEIGHT:I

    const/16 v0, 0x12c

    .line 28
    iput v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_ANIMATION_TIME:I

    .line 43
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    const/16 v1, 0x258

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz p2, :cond_1d

    const/16 p2, 0x14

    .line 46
    iput p2, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_WIDTH:I

    .line 49
    :cond_1d
    new-instance v2, Linfo/flowersoft/theotown/ui/NotificationBar$1;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p2

    sub-int/2addr p2, v6

    div-int/lit8 v4, p2, 0x2

    .line 50
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p2

    add-int/lit8 v5, p2, -0x24

    const/16 v7, 0x24

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/NotificationBar$1;-><init>(Linfo/flowersoft/theotown/ui/NotificationBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, v3, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 90
    const-string p1, "pnlNotification"

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/NotificationBar;)J
    .registers 3

    .line 22
    iget-wide v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->buildTime:J

    return-wide v0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/NotificationBar;)I
    .registers 1

    .line 22
    iget p0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_WIDTH:I

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/NotificationBar;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->important:Z

    return p0
.end method


# virtual methods
.method public build(Z)V
    .registers 18

    move-object/from16 v1, p0

    .line 110
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 112
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 114
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->actions:Ljava/util/List;

    if-eqz v2, :cond_4e

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Linfo/flowersoft/theotown/city/components/NotificationAction;

    .line 116
    iget v2, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_WIDTH:I

    add-int/lit8 v2, v2, 0x1

    sub-int v4, v0, v2

    .line 117
    new-instance v0, Linfo/flowersoft/theotown/ui/NotificationBar$2;

    .line 118
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getIconId()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 119
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    div-int/lit8 v5, v3, 0x2

    iget v6, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_WIDTH:I

    const/16 v7, 0x1e

    iget-object v8, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    const-string v3, ""

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/NotificationBar$2;-><init>(Linfo/flowersoft/theotown/ui/NotificationBar;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/components/NotificationAction;)V

    .line 134
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    move v0, v4

    goto :goto_17

    :cond_4e
    move v8, v0

    .line 138
    new-instance v0, Linfo/flowersoft/theotown/ui/NotificationBar$3;

    iget v2, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->icon:I

    iget v5, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_WIDTH:I

    const/16 v6, 0x20

    iget-object v7, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/NotificationBar$3;-><init>(Linfo/flowersoft/theotown/ui/NotificationBar;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 164
    new-instance v9, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v10, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->text:Ljava/lang/String;

    iget v0, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->NOTIFICATION_CMD_WIDTH:I

    add-int/lit8 v11, v0, 0x8

    sub-int/2addr v8, v0

    add-int/lit8 v13, v8, -0xa

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    .line 167
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v14

    iget-object v15, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v15}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {v9, v0, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setAlignment(FF)V

    .line 170
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    const/4 v0, 0x0

    .line 171
    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 172
    iget-boolean v0, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->important:Z

    if-eqz v0, :cond_90

    .line 173
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_97

    .line 175
    :cond_90
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :goto_97
    if-eqz p1, :cond_9f

    .line 179
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/ui/NotificationBar;->buildTime:J

    :cond_9f
    return-void
.end method

.method public free()V
    .registers 3

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->panel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->actions:Ljava/util/List;

    return-void
.end method

.method public setIcon(I)V
    .registers 2

    .line 94
    iput p1, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->icon:I

    return-void
.end method

.method public setImportant(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->important:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/NotificationBar;->text:Ljava/lang/String;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.NotificationBar.AnonymousClass1 (info.flowersoft.theotown.ui.NotificationBar$1)
.class Linfo/flowersoft/theotown/ui/NotificationBar$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "NotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/NotificationBar;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/NotificationBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/NotificationBar;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/NotificationBar$1;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 57
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 58
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar$1;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/NotificationBar;->access$000(Linfo/flowersoft/theotown/ui/NotificationBar;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    mul-float/2addr v4, v0

    add-float v0, v3, v4

    sub-float/2addr v2, v0

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v2, v3

    float-to-int v8, v2

    .line 62
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 63
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/NotificationBar$1;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    .line 64
    invoke-static {v4}, Linfo/flowersoft/theotown/ui/NotificationBar;->access$100(Linfo/flowersoft/theotown/ui/NotificationBar;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, -0x5

    int-to-float v4, v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/NotificationBar$1;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    .line 66
    invoke-static {v6}, Linfo/flowersoft/theotown/ui/NotificationBar;->access$100(Linfo/flowersoft/theotown/ui/NotificationBar;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    iget-object v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, v7, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    .line 63
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 70
    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    .line 71
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar$1;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/NotificationBar;->access$200(Linfo/flowersoft/theotown/ui/NotificationBar;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 73
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 75
    :cond_78
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/NotificationBar$1;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/NotificationBar;->access$100(Linfo/flowersoft/theotown/ui/NotificationBar;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    add-int/2addr v0, v8

    int-to-float v4, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/NotificationBar$1;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    .line 76
    invoke-static {v5}, Linfo/flowersoft/theotown/ui/NotificationBar;->access$100(Linfo/flowersoft/theotown/ui/NotificationBar;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v0

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, v0, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    .line 75
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 78
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/2addr p2, v8

    .line 79
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    const/16 p1, 0xff

    .line 81
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 86
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.NotificationBar.AnonymousClass2 (info.flowersoft.theotown.ui.NotificationBar$2)
.class public Linfo/flowersoft/theotown/ui/NotificationBar$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "NotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/NotificationBar;->build(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

.field public final synthetic val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/NotificationBar;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/components/NotificationAction;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/NotificationBar$2;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/NotificationBar$2;->val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public calculateMinWidth()V
    .registers 1

    .line 0
    return-void
.end method

.method public onClick()V
    .registers 2

    .line 124
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar$2;->val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/city/components/NotificationAction;->setButton(Lio/blueflower/stapel2d/gui/Button;)V

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/NotificationBar$2;->val$action:Linfo/flowersoft/theotown/city/components/NotificationAction;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/NotificationAction;->getAction()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.NotificationBar.AnonymousClass3 (info.flowersoft.theotown.ui.NotificationBar$3)
.class Linfo/flowersoft/theotown/ui/NotificationBar$3;
.super Lio/blueflower/stapel2d/gui/Icon;
.source "NotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/NotificationBar;->build(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/NotificationBar;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/NotificationBar;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
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

    .line 138
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/NotificationBar$3;->this$0:Linfo/flowersoft/theotown/ui/NotificationBar;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 10

    .line 141
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 142
    iget v1, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v1

    .line 143
    iget v2, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    .line 144
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentX:F

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    mul-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v3, p1

    int-to-float p1, v3

    iget v1, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v1

    add-float/2addr p1, v1

    .line 145
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v1, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentY:F

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    mul-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v0

    add-float/2addr p2, v0

    .line 147
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 149
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v1, 0x1e

    .line 150
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 151
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, p1, v2

    add-float v4, p2, v2

    iget v5, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v1, v3, v4, v5}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/16 v1, 0x14

    .line 152
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 153
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    sub-float v5, v3, v2

    iget v6, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v1, v5, v4, v6}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 154
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    add-float v5, v3, v2

    iget v6, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v1, v5, v4, v6}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 155
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    sub-float v5, v4, v2

    iget v6, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v1, v3, v5, v6}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 156
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    add-float/2addr v4, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v1, v3, v4, v2}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/16 v1, 0xff

    .line 157
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 159
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 160
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method
