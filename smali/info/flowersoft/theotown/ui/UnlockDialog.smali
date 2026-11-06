###### Class info.flowersoft.theotown.ui.UnlockDialog (info.flowersoft.theotown.ui.UnlockDialog)
.class public Linfo/flowersoft/theotown/ui/UnlockDialog;
.super Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;
.source "UnlockDialog.java"


# direct methods
.method public static synthetic $r8$lambda$usJgKw3EDfBKFkhp8bduvFepv5A(Linfo/flowersoft/theotown/ui/UnlockDialog;JLinfo/flowersoft/theotown/util/TimeUnlockable;JI)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p6, :cond_31

    .line 45
    sget-object p6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video skip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    const-wide/16 v1, 0x3c

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "m"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wachted ad"

    const-string v0, ""

    invoke-interface {p6, p1, p2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p3, p4, p5}, Linfo/flowersoft/theotown/util/TimeUnlockable;->reduceWaitingTime(J)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_31
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/TimeUnlockable;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/TimeUnlockable;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK:I

    .line 23
    invoke-virtual/range {p4 .. p4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x3d5

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual/range {p4 .. p4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v3, 0x923

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide v3

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide v4

    long-to-float v0, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v0, v4

    const v4, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const/16 v4, 0xa

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    new-instance v7, Linfo/flowersoft/theotown/ui/UnlockDialog$1;

    move-object/from16 v13, p1

    invoke-direct {v7, v13}, Linfo/flowersoft/theotown/ui/UnlockDialog$1;-><init>(Linfo/flowersoft/theotown/util/TimeUnlockable;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 22
    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->getDiamondButton()Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 38
    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide v10

    const-wide/32 v0, 0x1b7740

    .line 39
    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 41
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->videoAdStageFactory:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;

    if-eqz v2, :cond_b1

    .line 42
    new-instance v8, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;

    move-object/from16 v9, p0

    move-object v12, v13

    move-wide v13, v0

    invoke-direct/range {v8 .. v14}, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/UnlockDialog;JLinfo/flowersoft/theotown/util/TimeUnlockable;J)V

    move-object/from16 v9, p4

    move-object/from16 v0, p6

    invoke-interface {v2, v9, v0, v8}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;->create(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    move-result-object v23

    move-wide v0, v13

    .line 53
    new-instance v13, Linfo/flowersoft/theotown/ui/UnlockDialog$2;

    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY_AD_VIDEO:I

    .line 54
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "-%s"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 55
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    move-object/from16 v22, p3

    invoke-direct/range {v13 .. v23}, Linfo/flowersoft/theotown/ui/UnlockDialog$2;-><init>(Linfo/flowersoft/theotown/ui/UnlockDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    :cond_b1
    return-void
.end method

###### Class info.flowersoft.theotown.ui.UnlockDialog.AnonymousClass1 (info.flowersoft.theotown.ui.UnlockDialog$1)
.class Linfo/flowersoft/theotown/ui/UnlockDialog$1;
.super Ljava/lang/Object;
.source "UnlockDialog.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/UnlockDialog;-><init>(Linfo/flowersoft/theotown/util/TimeUnlockable;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$unlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/TimeUnlockable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$1;->val$unlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$1;->val$unlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->unlockImmediately()V

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/UnlockDialog$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.UnlockDialog.AnonymousClass2 (info.flowersoft.theotown.ui.UnlockDialog$2)
.class Linfo/flowersoft/theotown/ui/UnlockDialog$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "UnlockDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/UnlockDialog;-><init>(Linfo/flowersoft/theotown/util/TimeUnlockable;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/UnlockDialog;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/UnlockDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V
    .registers 11
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

    .line 55
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$2;->this$0:Linfo/flowersoft/theotown/ui/UnlockDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$2;->val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$2;->val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-interface {v0}, Linfo/flowersoft/theotown/util/Loadable;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 58
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$2;->val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.UnlockDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.UnlockDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/UnlockDialog;

.field public final synthetic f$1:J

.field public final synthetic f$2:Linfo/flowersoft/theotown/util/TimeUnlockable;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/UnlockDialog;JLinfo/flowersoft/theotown/util/TimeUnlockable;J)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/UnlockDialog;

    iput-wide p2, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iput-wide p5, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final handle(I)V
    .registers 9

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/UnlockDialog;

    iget-wide v1, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/util/TimeUnlockable;

    iget-wide v4, p0, Linfo/flowersoft/theotown/ui/UnlockDialog$$ExternalSyntheticLambda0;->f$3:J

    move v6, p1

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/UnlockDialog;->$r8$lambda$usJgKw3EDfBKFkhp8bduvFepv5A(Linfo/flowersoft/theotown/ui/UnlockDialog;JLinfo/flowersoft/theotown/util/TimeUnlockable;JI)V

    return-void
.end method
