###### Class info.flowersoft.theotown.ui.ReturningPlayerDialog (info.flowersoft.theotown.ui.ReturningPlayerDialog)
.class public final Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "ReturningPlayerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;


# instance fields
.field public claimed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;->Companion:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;I)V
    .registers 15

    const-string v0, "gui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    const/16 v1, 0x1d6

    .line 21
    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-interface {p2}, Lio/blueflower/stapel2d/gamestack/Translator;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const/16 v3, 0xb86

    invoke-interface {p2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v2, v3, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-direct {p0, v0, v1, p3, p1}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 29
    new-instance v4, Linfo/flowersoft/theotown/util/SpecialInt;

    .line 30
    sget-object p1, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;->Companion:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;->getConfig()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    const-string p3, "amount"

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p3, 0x12c

    const/4 v1, 0x0

    .line 29
    invoke-static {p1, v1, p3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-direct {v4, p1}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>(I)V

    .line 32
    new-instance v5, Linfo/flowersoft/theotown/ui/IconLabel;

    .line 33
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x2b

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 32
    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/ui/IconLabel;-><init>(ILjava/lang/String;IILio/blueflower/stapel2d/gui/Gadget;)V

    .line 38
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    .line 39
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 42
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p1, 0xd19

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    .line 41
    new-instance v2, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;-><init>(Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;Linfo/flowersoft/theotown/util/SpecialInt;ILjava/lang/String;ILio/blueflower/stapel2d/gui/LineLayout;)V

    .line 54
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-void
.end method

.method public static final synthetic access$getClaimed$p(Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;->claimed:Z

    return p0
.end method

.method public static final synthetic access$setClaimed$p(Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;Z)V
    .registers 2

    .line 18
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;->claimed:Z

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReturningPlayerDialog.AnonymousClass1 (info.flowersoft.theotown.ui.ReturningPlayerDialog$1)
.class public final Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "ReturningPlayerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $amount:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;Linfo/flowersoft/theotown/util/SpecialInt;ILjava/lang/String;ILio/blueflower/stapel2d/gui/LineLayout;)V
    .registers 15

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;->$amount:Linfo/flowersoft/theotown/util/SpecialInt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move v6, p5

    move-object v7, p6

    .line 41
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 46
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;->access$getClaimed$p(Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 48
    :cond_c
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;->access$setClaimed$p(Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;Z)V

    .line 50
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;->$amount:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    const-string v3, "returning player launch present"

    invoke-virtual {v0, v2, v1, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 51
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->setLastSaveTime(J)V

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$1;->this$0:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReturningPlayerDialog.Companion (info.flowersoft.theotown.ui.ReturningPlayerDialog$Companion)
.class public final Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;
.super Ljava/lang/Object;
.source "ReturningPlayerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 3

    .line 58
    const-string v0, "returning reward"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "getSpecificConfig(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
