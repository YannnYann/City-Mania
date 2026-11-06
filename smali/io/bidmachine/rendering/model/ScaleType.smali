###### Class io.bidmachine.rendering.model.ScaleType (io.bidmachine.rendering.model.ScaleType)
.class public final enum Lio/bidmachine/rendering/model/ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/ScaleType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/ScaleType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final enum AspectFill:Lio/bidmachine/rendering/model/ScaleType;

.field public static final enum AspectFit:Lio/bidmachine/rendering/model/ScaleType;

.field public static final Companion:Lio/bidmachine/rendering/model/ScaleType$Companion;

.field public static final enum None:Lio/bidmachine/rendering/model/ScaleType;

.field public static final enum ToFill:Lio/bidmachine/rendering/model/ScaleType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/ScaleType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/ScaleType;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "None"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/ScaleType;->None:Lio/bidmachine/rendering/model/ScaleType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/ScaleType;

    const/4 v1, 0x1

    const-string v2, "to_fill"

    const-string v3, "ToFill"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/ScaleType;->ToFill:Lio/bidmachine/rendering/model/ScaleType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/ScaleType;

    const/4 v1, 0x2

    const-string v2, "aspect_fill"

    const-string v3, "AspectFill"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/ScaleType;->AspectFill:Lio/bidmachine/rendering/model/ScaleType;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/model/ScaleType;

    const/4 v1, 0x3

    const-string v2, "aspect_fit"

    const-string v3, "AspectFit"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/ScaleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/ScaleType;->AspectFit:Lio/bidmachine/rendering/model/ScaleType;

    invoke-static {}, Lio/bidmachine/rendering/model/ScaleType;->a()[Lio/bidmachine/rendering/model/ScaleType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/ScaleType;->b:[Lio/bidmachine/rendering/model/ScaleType;

    new-instance v0, Lio/bidmachine/rendering/model/ScaleType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/ScaleType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/ScaleType;->Companion:Lio/bidmachine/rendering/model/ScaleType$Companion;

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

    iput-object p3, p0, Lio/bidmachine/rendering/model/ScaleType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/ScaleType;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/ScaleType;->None:Lio/bidmachine/rendering/model/ScaleType;

    sget-object v1, Lio/bidmachine/rendering/model/ScaleType;->ToFill:Lio/bidmachine/rendering/model/ScaleType;

    sget-object v2, Lio/bidmachine/rendering/model/ScaleType;->AspectFill:Lio/bidmachine/rendering/model/ScaleType;

    sget-object v3, Lio/bidmachine/rendering/model/ScaleType;->AspectFit:Lio/bidmachine/rendering/model/ScaleType;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/model/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/ScaleType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/ScaleType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/ScaleType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/ScaleType;->b:[Lio/bidmachine/rendering/model/ScaleType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/ScaleType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/ScaleType;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.ScaleType.Companion (io.bidmachine.rendering.model.ScaleType$Companion)
.class public final Lio/bidmachine/rendering/model/ScaleType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/ScaleType;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/ScaleType$Companion;-><init>()V

    return-void
.end method
