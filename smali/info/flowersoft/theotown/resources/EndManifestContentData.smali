###### Class info.flowersoft.theotown.resources.EndManifestContentData (info.flowersoft.theotown.resources.EndManifestContentData)
.class public final Linfo/flowersoft/theotown/resources/EndManifestContentData;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/resources/EndManifestContentData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/resources/EndManifestContentData;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/EndManifestContentData;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/EndManifestContentData;->INSTANCE:Linfo/flowersoft/theotown/resources/EndManifestContentData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
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
    instance-of p1, p1, Linfo/flowersoft/theotown/resources/EndManifestContentData;

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    const v0, 0xaa5f57

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "EndManifestContentData"

    return-object v0
.end method
