###### Class info.flowersoft.theotown.resources.BeginManifestContentData (info.flowersoft.theotown.resources.BeginManifestContentData)
.class public final Linfo/flowersoft/theotown/resources/BeginManifestContentData;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# instance fields
.field public final json:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/BeginManifestContentData;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final getJson()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/BeginManifestContentData;->json:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method
