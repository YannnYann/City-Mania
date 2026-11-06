###### Class io.bidmachine.rendering.model.AdElementType (io.bidmachine.rendering.model.AdElementType)
.class public final enum Lio/bidmachine/rendering/model/AdElementType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/AdElementType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/AdElementType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/AdElementType$Companion;

.field public static final enum Countdown:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Image:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Label:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Mraid:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Progress:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Video:Lio/bidmachine/rendering/model/AdElementType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/AdElementType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    const/4 v1, 0x0

    const-string v2, "mraid"

    const-string v3, "Mraid"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Mraid:Lio/bidmachine/rendering/model/AdElementType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    const/4 v1, 0x1

    const-string v2, "video"

    const-string v3, "Video"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Video:Lio/bidmachine/rendering/model/AdElementType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    const/4 v1, 0x2

    const-string v2, "image"

    const-string v3, "Image"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    const/4 v1, 0x3

    const-string v2, "label"

    const-string v3, "Label"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    const/4 v1, 0x4

    const-string v2, "countdown"

    const-string v3, "Countdown"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Countdown:Lio/bidmachine/rendering/model/AdElementType;

    .line 6
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    const/4 v1, 0x5

    const-string v2, "progress"

    const-string v3, "Progress"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Progress:Lio/bidmachine/rendering/model/AdElementType;

    invoke-static {}, Lio/bidmachine/rendering/model/AdElementType;->a()[Lio/bidmachine/rendering/model/AdElementType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->b:[Lio/bidmachine/rendering/model/AdElementType;

    new-instance v0, Lio/bidmachine/rendering/model/AdElementType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/AdElementType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Companion:Lio/bidmachine/rendering/model/AdElementType$Companion;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/AdElementType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/AdElementType;
    .registers 6

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Mraid:Lio/bidmachine/rendering/model/AdElementType;

    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Video:Lio/bidmachine/rendering/model/AdElementType;

    sget-object v2, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    sget-object v3, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    sget-object v4, Lio/bidmachine/rendering/model/AdElementType;->Countdown:Lio/bidmachine/rendering/model/AdElementType;

    sget-object v5, Lio/bidmachine/rendering/model/AdElementType;->Progress:Lio/bidmachine/rendering/model/AdElementType;

    filled-new-array/range {v0 .. v5}, [Lio/bidmachine/rendering/model/AdElementType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/AdElementType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/AdElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/AdElementType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/AdElementType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->b:[Lio/bidmachine/rendering/model/AdElementType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/AdElementType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementType;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.AdElementType.Companion (io.bidmachine.rendering.model.AdElementType$Companion)
.class public final Lio/bidmachine/rendering/model/AdElementType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/AdElementType;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/AdElementType$Companion;-><init>()V

    return-void
.end method
