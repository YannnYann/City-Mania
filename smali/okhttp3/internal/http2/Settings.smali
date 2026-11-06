###### Class okhttp3.internal.http2.Settings (okhttp3.internal.http2.Settings)
.class public final Lokhttp3/internal/http2/Settings;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Settings$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http2/Settings$Companion;


# instance fields
.field public set:I

.field public final values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lokhttp3/internal/http2/Settings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Settings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http2/Settings;->Companion:Lokhttp3/internal/http2/Settings$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 28
    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    return-void
.end method


# virtual methods
.method public final get(I)I
    .registers 3

    .line 66
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getHeaderTableSize()I
    .registers 3

    .line 34
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_c
    const/4 v0, -0x1

    return v0
.end method

.method public final getInitialWindowSize()I
    .registers 3

    .line 40
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0

    :cond_c
    const v0, 0xffff

    return v0
.end method

.method public final getMaxConcurrentStreams()I
    .registers 3

    .line 79
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0

    :cond_c
    const v0, 0x7fffffff

    return v0
.end method

.method public final getMaxFrameSize(I)I
    .registers 3

    .line 84
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    iget-object p1, p0, Lokhttp3/internal/http2/Settings;->values:[I

    const/4 v0, 0x5

    aget p1, p1, v0

    :cond_b
    return p1
.end method

.method public final isSet(I)Z
    .registers 4

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 62
    iget v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public final merge(Lokhttp3/internal/http2/Settings;)V
    .registers 5

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1c

    add-int/lit8 v1, v0, 0x1

    .line 98
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_1a

    .line 99
    :cond_13
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    :goto_1a
    move v0, v1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public final set(II)Lokhttp3/internal/http2/Settings;
    .registers 6

    if-ltz p1, :cond_11

    .line 49
    iget-object v0, p0, Lokhttp3/internal/http2/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_11

    :cond_8
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 54
    iget v2, p0, Lokhttp3/internal/http2/Settings;->set:I

    or-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 55
    aput p2, v0, p1

    :cond_11
    :goto_11
    return-object p0
.end method

.method public final size()I
    .registers 2

    .line 69
    iget v0, p0, Lokhttp3/internal/http2/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

###### Class okhttp3.internal.http2.Settings.Companion (okhttp3.internal.http2.Settings$Companion)
.class public final Lokhttp3/internal/http2/Settings$Companion;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/http2/Settings$Companion;-><init>()V

    return-void
.end method
