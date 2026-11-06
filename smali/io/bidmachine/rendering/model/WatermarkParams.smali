###### Class io.bidmachine.rendering.model.WatermarkParams (io.bidmachine.rendering.model.WatermarkParams)
.class public final Lio/bidmachine/rendering/model/WatermarkParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;,
        Lio/bidmachine/rendering/model/WatermarkParams$Location;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lio/bidmachine/rendering/model/WatermarkParams$Location;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;Ljava/lang/String;ILio/bidmachine/rendering/model/WatermarkParams$Location;)V
    .registers 6

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/WatermarkParams;->a:Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/model/WatermarkParams;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lio/bidmachine/rendering/model/WatermarkParams;->c:I

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/model/WatermarkParams;->d:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    return-void
.end method


# virtual methods
.method public final getBaseColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/WatermarkParams;->c:I

    return v0
.end method

.method public final getLocation()Lio/bidmachine/rendering/model/WatermarkParams$Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/WatermarkParams;->d:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/WatermarkParams;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.WatermarkParams.Algorithm (io.bidmachine.rendering.model.WatermarkParams$Algorithm)
.class public final enum Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/WatermarkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RGB_STRIP:Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

.field public static final synthetic a:[Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    const-string v1, "RGB_STRIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;->RGB_STRIP:Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    invoke-static {}, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;->a()[Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;->a:[Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;->RGB_STRIP:Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    filled-new-array {v0}, [Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;->a:[Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/WatermarkParams$Algorithm;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.WatermarkParams.Location (io.bidmachine.rendering.model.WatermarkParams$Location)
.class public final enum Lio/bidmachine/rendering/model/WatermarkParams$Location;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/WatermarkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/WatermarkParams$Location;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

.field public static final enum BOTTOM_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

.field public static final enum BOTTOM_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

.field public static final enum TOP_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

.field public static final enum TOP_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

.field public static final enum TOP_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

.field public static final synthetic a:[Lio/bidmachine/rendering/model/WatermarkParams$Location;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/WatermarkParams$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/WatermarkParams$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/WatermarkParams$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/WatermarkParams$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/WatermarkParams$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    .line 6
    new-instance v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/WatermarkParams$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-static {}, Lio/bidmachine/rendering/model/WatermarkParams$Location;->a()[Lio/bidmachine/rendering/model/WatermarkParams$Location;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->a:[Lio/bidmachine/rendering/model/WatermarkParams$Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/WatermarkParams$Location;
    .registers 6

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    sget-object v1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    sget-object v2, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    sget-object v3, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    sget-object v4, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    sget-object v5, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    filled-new-array/range {v0 .. v5}, [Lio/bidmachine/rendering/model/WatermarkParams$Location;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/WatermarkParams$Location;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/WatermarkParams$Location;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/WatermarkParams$Location;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/WatermarkParams$Location;->a:[Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/WatermarkParams$Location;

    return-object v0
.end method
