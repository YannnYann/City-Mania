###### Class io.bidmachine.rendering.model.MediaSource (io.bidmachine.rendering.model.MediaSource)
.class public abstract Lio/bidmachine/rendering/model/MediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/MediaSource$DeliveryType;,
        Lio/bidmachine/rendering/model/MediaSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/MediaSource$Companion;


# instance fields
.field public final a:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/model/MediaSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/MediaSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/model/MediaSource;->Companion:Lio/bidmachine/rendering/model/MediaSource$Companion;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/model/MediaSource;->a:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/MediaSource$DeliveryType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/model/MediaSource;-><init>(Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V

    return-void
.end method


# virtual methods
.method public getDeliveryType()Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/MediaSource;->a:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    return-object v0
.end method

###### Class io.bidmachine.rendering.model.MediaSource.Companion (io.bidmachine.rendering.model.MediaSource$Companion)
.class public final Lio/bidmachine/rendering/model/MediaSource$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/MediaSource;
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
    invoke-direct {p0}, Lio/bidmachine/rendering/model/MediaSource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBase64(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, v0

    :goto_b
    if-eqz p1, :cond_12

    .line 2
    new-instance v0, Lio/bidmachine/rendering/model/Base64MediaSource;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/model/Base64MediaSource;-><init>(Ljava/lang/String;)V

    :cond_12
    return-object v0
.end method

.method public final fromDefaultSettings(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;
    .registers 3

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/rendering/internal/k;->a:Lio/bidmachine/rendering/internal/k;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource;->Companion:Lio/bidmachine/rendering/model/MediaSource$Companion;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/model/MediaSource$Companion;->fromBase64(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-object p1

    :catchall_f
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public final fromUrl(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/rendering/model/MediaSourceKt;->urlsToMediaSource(Ljava/util/List;)Lio/bidmachine/rendering/model/MediaSource;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.model.MediaSource.DeliveryType (io.bidmachine.rendering.model.MediaSource$DeliveryType)
.class public final enum Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/model/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/MediaSource$DeliveryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PRELOAD:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

.field public static final enum STREAM:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

.field public static final synthetic a:[Lio/bidmachine/rendering/model/MediaSource$DeliveryType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    const-string v1, "PRELOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->PRELOAD:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    const-string v1, "STREAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->STREAM:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    invoke-static {}, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->a()[Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->a:[Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

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

.method public static final synthetic a()[Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->PRELOAD:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    sget-object v1, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->STREAM:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/MediaSource$DeliveryType;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->a:[Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    return-object v0
.end method
