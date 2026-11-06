###### Class info.flowersoft.theotown.resources.PrivateMarker (info.flowersoft.theotown.resources.PrivateMarker)
.class public final Linfo/flowersoft/theotown/resources/PrivateMarker;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/resources/PrivateMarker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/resources/PrivateMarker;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/PrivateMarker;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/PrivateMarker;->INSTANCE:Linfo/flowersoft/theotown/resources/PrivateMarker;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of p1, p1, Linfo/flowersoft/theotown/resources/PrivateMarker;

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    const v0, -0x4b2c3441

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "PrivateMarker"

    return-object v0
.end method
