###### Class io.bidmachine.rendering.model.Orientation (io.bidmachine.rendering.model.Orientation)
.class public final enum Lio/bidmachine/rendering/model/Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/Orientation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/Orientation;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/Orientation$Companion;

.field public static final enum Landscape:Lio/bidmachine/rendering/model/Orientation;

.field public static final enum Portrait:Lio/bidmachine/rendering/model/Orientation;

.field public static final synthetic c:[Lio/bidmachine/rendering/model/Orientation;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/Orientation;

    const-string v1, "portrait"

    const/4 v2, 0x7

    const-string v3, "Portrait"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->Portrait:Lio/bidmachine/rendering/model/Orientation;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/Orientation;

    const-string v1, "landscape"

    const/4 v2, 0x6

    const-string v3, "Landscape"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->Landscape:Lio/bidmachine/rendering/model/Orientation;

    invoke-static {}, Lio/bidmachine/rendering/model/Orientation;->a()[Lio/bidmachine/rendering/model/Orientation;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->c:[Lio/bidmachine/rendering/model/Orientation;

    new-instance v0, Lio/bidmachine/rendering/model/Orientation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/Orientation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->Companion:Lio/bidmachine/rendering/model/Orientation$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/bidmachine/rendering/model/Orientation;->a:Ljava/lang/String;

    iput p4, p0, Lio/bidmachine/rendering/model/Orientation;->b:I

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/Orientation;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/Orientation;->Portrait:Lio/bidmachine/rendering/model/Orientation;

    sget-object v1, Lio/bidmachine/rendering/model/Orientation;->Landscape:Lio/bidmachine/rendering/model/Orientation;

    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/Orientation;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/Orientation;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/Orientation;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/Orientation;->c:[Lio/bidmachine/rendering/model/Orientation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/Orientation;

    return-object v0
.end method


# virtual methods
.method public final getActivityOrientation()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Orientation;->b:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Orientation;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.Orientation.Companion (io.bidmachine.rendering.model.Orientation$Companion)
.class public final Lio/bidmachine/rendering/model/Orientation$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/Orientation;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/Orientation$Companion;-><init>()V

    return-void
.end method
