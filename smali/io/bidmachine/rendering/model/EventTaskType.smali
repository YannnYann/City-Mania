###### Class io.bidmachine.rendering.model.EventTaskType (io.bidmachine.rendering.model.EventTaskType)
.class public final enum Lio/bidmachine/rendering/model/EventTaskType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/EventTaskType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/EventTaskType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum ChangeActivity:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum ChangeLayout:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Close:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Collapse:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final Companion:Lio/bidmachine/rendering/model/EventTaskType$Companion;

.field public static final enum Expand:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Hide:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum LockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Mute:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum NotifyOpen:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Open:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum OpenPrivacySheet:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Pause:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Play:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Progress:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Repeat:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum ReportClick:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum RequestPermission:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Schedule:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Show:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum SimulateClick:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Skip:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Start:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum ToggleStateGroups:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum Track:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum UnMute:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final enum UnlockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/EventTaskType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x0

    const-string v2, "track"

    const-string v3, "Track"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Track:Lio/bidmachine/rendering/model/EventTaskType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x1

    const-string v2, "open"

    const-string v3, "Open"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Open:Lio/bidmachine/rendering/model/EventTaskType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x2

    const-string v2, "notify_open"

    const-string v3, "NotifyOpen"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->NotifyOpen:Lio/bidmachine/rendering/model/EventTaskType;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x3

    const-string v2, "skip"

    const-string v3, "Skip"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Skip:Lio/bidmachine/rendering/model/EventTaskType;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x4

    const-string v2, "close"

    const-string v3, "Close"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Close:Lio/bidmachine/rendering/model/EventTaskType;

    .line 6
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x5

    const-string v2, "mute"

    const-string v3, "Mute"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Mute:Lio/bidmachine/rendering/model/EventTaskType;

    .line 7
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x6

    const-string v2, "unmute"

    const-string v3, "UnMute"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->UnMute:Lio/bidmachine/rendering/model/EventTaskType;

    .line 8
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/4 v1, 0x7

    const-string v2, "repeat"

    const-string v3, "Repeat"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Repeat:Lio/bidmachine/rendering/model/EventTaskType;

    .line 9
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x8

    const-string v2, "show"

    const-string v3, "Show"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Show:Lio/bidmachine/rendering/model/EventTaskType;

    .line 10
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x9

    const-string v2, "hide"

    const-string v3, "Hide"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Hide:Lio/bidmachine/rendering/model/EventTaskType;

    .line 11
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0xa

    const-string v2, "progress"

    const-string v3, "Progress"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Progress:Lio/bidmachine/rendering/model/EventTaskType;

    .line 12
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0xb

    const-string v2, "schedule"

    const-string v3, "Schedule"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Schedule:Lio/bidmachine/rendering/model/EventTaskType;

    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0xc

    const-string v2, "start"

    const-string v3, "Start"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Start:Lio/bidmachine/rendering/model/EventTaskType;

    .line 14
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0xd

    const-string v2, "lock_visibility"

    const-string v3, "LockVisibility"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->LockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    .line 15
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0xe

    const-string v2, "unlock_visibility"

    const-string v3, "UnlockVisibility"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->UnlockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    .line 16
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0xf

    const-string v2, "simulate_click"

    const-string v3, "SimulateClick"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->SimulateClick:Lio/bidmachine/rendering/model/EventTaskType;

    .line 17
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x10

    const-string v2, "open_privacy_sheet"

    const-string v3, "OpenPrivacySheet"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->OpenPrivacySheet:Lio/bidmachine/rendering/model/EventTaskType;

    .line 18
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x11

    const-string v2, "toggle_state_groups"

    const-string v3, "ToggleStateGroups"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->ToggleStateGroups:Lio/bidmachine/rendering/model/EventTaskType;

    .line 19
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x12

    const-string v2, "expand"

    const-string v3, "Expand"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Expand:Lio/bidmachine/rendering/model/EventTaskType;

    .line 20
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x13

    const-string v2, "collapse"

    const-string v3, "Collapse"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Collapse:Lio/bidmachine/rendering/model/EventTaskType;

    .line 21
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x14

    const-string v2, "request_permission"

    const-string v3, "RequestPermission"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->RequestPermission:Lio/bidmachine/rendering/model/EventTaskType;

    .line 22
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x15

    const-string v2, "report_click"

    const-string v3, "ReportClick"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->ReportClick:Lio/bidmachine/rendering/model/EventTaskType;

    .line 23
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x16

    const-string v2, "play"

    const-string v3, "Play"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Play:Lio/bidmachine/rendering/model/EventTaskType;

    .line 24
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x17

    const-string v2, "pause"

    const-string v3, "Pause"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Pause:Lio/bidmachine/rendering/model/EventTaskType;

    .line 25
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x18

    const-string v2, "change_layout"

    const-string v3, "ChangeLayout"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->ChangeLayout:Lio/bidmachine/rendering/model/EventTaskType;

    .line 26
    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType;

    const/16 v1, 0x19

    const-string v2, "change_activity"

    const-string v3, "ChangeActivity"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->ChangeActivity:Lio/bidmachine/rendering/model/EventTaskType;

    invoke-static {}, Lio/bidmachine/rendering/model/EventTaskType;->a()[Lio/bidmachine/rendering/model/EventTaskType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->b:[Lio/bidmachine/rendering/model/EventTaskType;

    new-instance v0, Lio/bidmachine/rendering/model/EventTaskType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/EventTaskType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Companion:Lio/bidmachine/rendering/model/EventTaskType$Companion;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/EventTaskType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/EventTaskType;
    .registers 27

    .line 0
    sget-object v1, Lio/bidmachine/rendering/model/EventTaskType;->Track:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v2, Lio/bidmachine/rendering/model/EventTaskType;->Open:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v3, Lio/bidmachine/rendering/model/EventTaskType;->NotifyOpen:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v4, Lio/bidmachine/rendering/model/EventTaskType;->Skip:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v5, Lio/bidmachine/rendering/model/EventTaskType;->Close:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v6, Lio/bidmachine/rendering/model/EventTaskType;->Mute:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v7, Lio/bidmachine/rendering/model/EventTaskType;->UnMute:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v8, Lio/bidmachine/rendering/model/EventTaskType;->Repeat:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v9, Lio/bidmachine/rendering/model/EventTaskType;->Show:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v10, Lio/bidmachine/rendering/model/EventTaskType;->Hide:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v11, Lio/bidmachine/rendering/model/EventTaskType;->Progress:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v12, Lio/bidmachine/rendering/model/EventTaskType;->Schedule:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v13, Lio/bidmachine/rendering/model/EventTaskType;->Start:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v14, Lio/bidmachine/rendering/model/EventTaskType;->LockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v15, Lio/bidmachine/rendering/model/EventTaskType;->UnlockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v16, Lio/bidmachine/rendering/model/EventTaskType;->SimulateClick:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v17, Lio/bidmachine/rendering/model/EventTaskType;->OpenPrivacySheet:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v18, Lio/bidmachine/rendering/model/EventTaskType;->ToggleStateGroups:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v19, Lio/bidmachine/rendering/model/EventTaskType;->Expand:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v20, Lio/bidmachine/rendering/model/EventTaskType;->Collapse:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v21, Lio/bidmachine/rendering/model/EventTaskType;->RequestPermission:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v22, Lio/bidmachine/rendering/model/EventTaskType;->ReportClick:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v23, Lio/bidmachine/rendering/model/EventTaskType;->Play:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v24, Lio/bidmachine/rendering/model/EventTaskType;->Pause:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v25, Lio/bidmachine/rendering/model/EventTaskType;->ChangeLayout:Lio/bidmachine/rendering/model/EventTaskType;

    sget-object v26, Lio/bidmachine/rendering/model/EventTaskType;->ChangeActivity:Lio/bidmachine/rendering/model/EventTaskType;

    filled-new-array/range {v1 .. v26}, [Lio/bidmachine/rendering/model/EventTaskType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/EventTaskType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/EventTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/EventTaskType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/EventTaskType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->b:[Lio/bidmachine/rendering/model/EventTaskType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/EventTaskType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventTaskType;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.EventTaskType.Companion (io.bidmachine.rendering.model.EventTaskType$Companion)
.class public final Lio/bidmachine/rendering/model/EventTaskType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/EventTaskType;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/EventTaskType$Companion;-><init>()V

    return-void
.end method
