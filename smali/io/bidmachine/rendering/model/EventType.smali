###### Class io.bidmachine.rendering.model.EventType (io.bidmachine.rendering.model.EventType)
.class public final enum Lio/bidmachine/rendering/model/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/EventType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/EventType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/EventType$Companion;

.field public static final enum OnBillableImpression:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnClick:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnClickResolved:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnClose:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnCollapse:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnComplete:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnExpand:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnImpression:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnLayoutChanged:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnMidpoint:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnMute:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnNavigate:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnPause:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnProgress:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnResume:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnScheduled:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnSkip:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnStart:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnUnMute:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/EventType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x0

    const-string v2, "on_impression"

    const-string v3, "OnImpression"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x1

    const-string v2, "on_billable_impression"

    const-string v3, "OnBillableImpression"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnBillableImpression:Lio/bidmachine/rendering/model/EventType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x2

    const-string v2, "on_click"

    const-string v3, "OnClick"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x3

    const-string v2, "on_click_resolved"

    const-string v3, "OnClickResolved"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnClickResolved:Lio/bidmachine/rendering/model/EventType;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x4

    const-string v2, "on_mute"

    const-string v3, "OnMute"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    .line 6
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x5

    const-string v2, "on_unmute"

    const-string v3, "OnUnMute"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    .line 7
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x6

    const-string v2, "on_pause"

    const-string v3, "OnPause"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    .line 8
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/4 v1, 0x7

    const-string v2, "on_resume"

    const-string v3, "OnResume"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    .line 9
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x8

    const-string v2, "on_skip"

    const-string v3, "OnSkip"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    .line 10
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x9

    const-string v2, "on_close"

    const-string v3, "OnClose"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    .line 11
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0xa

    const-string v2, "on_start"

    const-string v3, "OnStart"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    .line 12
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0xb

    const-string v2, "on_first_quartile"

    const-string v3, "OnFirstQuartile"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0xc

    const-string v2, "on_midpoint"

    const-string v3, "OnMidpoint"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    .line 14
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0xd

    const-string v2, "on_third_quartile"

    const-string v3, "OnThirdQuartile"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 15
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0xe

    const-string v2, "on_complete"

    const-string v3, "OnComplete"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    .line 16
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0xf

    const-string v2, "on_progress"

    const-string v3, "OnProgress"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    .line 17
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x10

    const-string v2, "on_use_custom_close"

    const-string v3, "OnUseCustomClose"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    .line 18
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x11

    const-string v2, "on_scheduled"

    const-string v3, "OnScheduled"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    .line 19
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x12

    const-string v2, "on_navigate"

    const-string v3, "OnNavigate"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    .line 20
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x13

    const-string v2, "on_expand"

    const-string v3, "OnExpand"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnExpand:Lio/bidmachine/rendering/model/EventType;

    .line 21
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x14

    const-string v2, "on_collapse"

    const-string v3, "OnCollapse"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnCollapse:Lio/bidmachine/rendering/model/EventType;

    .line 22
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    const/16 v1, 0x15

    const-string v2, "on_layout_changed"

    const-string v3, "OnLayoutChanged"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnLayoutChanged:Lio/bidmachine/rendering/model/EventType;

    invoke-static {}, Lio/bidmachine/rendering/model/EventType;->a()[Lio/bidmachine/rendering/model/EventType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->b:[Lio/bidmachine/rendering/model/EventType;

    new-instance v0, Lio/bidmachine/rendering/model/EventType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/EventType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventType;->Companion:Lio/bidmachine/rendering/model/EventType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/rendering/model/EventType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/EventType;
    .registers 23

    .line 0
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    sget-object v2, Lio/bidmachine/rendering/model/EventType;->OnBillableImpression:Lio/bidmachine/rendering/model/EventType;

    sget-object v3, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    sget-object v4, Lio/bidmachine/rendering/model/EventType;->OnClickResolved:Lio/bidmachine/rendering/model/EventType;

    sget-object v5, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    sget-object v6, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    sget-object v7, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    sget-object v8, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    sget-object v9, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    sget-object v10, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    sget-object v11, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    sget-object v12, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    sget-object v13, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    sget-object v14, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    sget-object v15, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    sget-object v16, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    sget-object v17, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    sget-object v18, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    sget-object v19, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    sget-object v20, Lio/bidmachine/rendering/model/EventType;->OnExpand:Lio/bidmachine/rendering/model/EventType;

    sget-object v21, Lio/bidmachine/rendering/model/EventType;->OnCollapse:Lio/bidmachine/rendering/model/EventType;

    sget-object v22, Lio/bidmachine/rendering/model/EventType;->OnLayoutChanged:Lio/bidmachine/rendering/model/EventType;

    filled-new-array/range {v1 .. v22}, [Lio/bidmachine/rendering/model/EventType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/EventType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/EventType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/EventType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->b:[Lio/bidmachine/rendering/model/EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/EventType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventType;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.EventType.Companion (io.bidmachine.rendering.model.EventType$Companion)
.class public final Lio/bidmachine/rendering/model/EventType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/EventType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/model/EventType$Companion;-><init>()V

    return-void
.end method
