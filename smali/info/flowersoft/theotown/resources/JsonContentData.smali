###### Class info.flowersoft.theotown.resources.JsonContentData (info.flowersoft.theotown.resources.JsonContentData)
.class public final Linfo/flowersoft/theotown/resources/JsonContentData;
.super Ljava/lang/Object;
.source "ContentData.kt"

# interfaces
.implements Linfo/flowersoft/theotown/resources/ContentData;


# instance fields
.field public final json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/resources/JsonContentData;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getJson()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/JsonContentData;->json:Ljava/lang/String;

    return-object v0
.end method
