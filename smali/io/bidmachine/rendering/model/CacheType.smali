###### Class io.bidmachine.rendering.model.CacheType (io.bidmachine.rendering.model.CacheType)
.class public final enum Lio/bidmachine/rendering/model/CacheType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/KeyHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/CacheType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/CacheType;",
        ">;",
        "Lio/bidmachine/util/KeyHolder;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/CacheType$Companion;

.field public static final enum FullLoad:Lio/bidmachine/rendering/model/CacheType;

.field public static final enum PartialLoad:Lio/bidmachine/rendering/model/CacheType;

.field public static final enum StreamLoad:Lio/bidmachine/rendering/model/CacheType;

.field public static final synthetic b:[Lio/bidmachine/rendering/model/CacheType;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/CacheType;

    const/4 v1, 0x0

    const-string v2, "full_load"

    const-string v3, "FullLoad"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/CacheType;

    const/4 v1, 0x1

    const-string v2, "partial_load"

    const-string v3, "PartialLoad"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->PartialLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/model/CacheType;

    const/4 v1, 0x2

    const-string v2, "stream_load"

    const-string v3, "StreamLoad"

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->StreamLoad:Lio/bidmachine/rendering/model/CacheType;

    invoke-static {}, Lio/bidmachine/rendering/model/CacheType;->a()[Lio/bidmachine/rendering/model/CacheType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->b:[Lio/bidmachine/rendering/model/CacheType;

    new-instance v0, Lio/bidmachine/rendering/model/CacheType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/CacheType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->Companion:Lio/bidmachine/rendering/model/CacheType$Companion;

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

    .line 8
    iput-object p3, p0, Lio/bidmachine/rendering/model/CacheType;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/model/CacheType;
    .registers 3

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    sget-object v1, Lio/bidmachine/rendering/model/CacheType;->PartialLoad:Lio/bidmachine/rendering/model/CacheType;

    sget-object v2, Lio/bidmachine/rendering/model/CacheType;->StreamLoad:Lio/bidmachine/rendering/model/CacheType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/CacheType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/CacheType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/CacheType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/CacheType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->b:[Lio/bidmachine/rendering/model/CacheType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/CacheType;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/CacheType;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.CacheType.Companion (io.bidmachine.rendering.model.CacheType$Companion)
.class public final Lio/bidmachine/rendering/model/CacheType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/CacheType;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/CacheType$Companion;-><init>()V

    return-void
.end method
