###### Class io.bidmachine.internal.T (io.bidmachine.internal.T)
.class public final Lio/bidmachine/internal/T;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/internal/T$a;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/internal/T$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/T$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/internal/T$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/internal/T;->a:Lio/bidmachine/internal/T$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/bidmachine/internal/S;
    .registers 14

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :try_start_5
    new-instance v1, Lio/bidmachine/internal/S;

    .line 72
    sget-object v0, Lio/bidmachine/util/version/Version;->Companion:Lio/bidmachine/util/version/Version$Companion;

    const-string v2, "ver"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/util/version/Version$Companion;->parseVersion(Ljava/lang/String;)Lio/bidmachine/util/version/Version;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 73
    const-string v0, "scn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 74
    const-string v0, "fst"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 75
    const-string v0, "lst"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 76
    const-string v0, "csd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 77
    const-string v0, "lsd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 78
    invoke-direct/range {v1 .. v11}, Lio/bidmachine/internal/S;-><init>(Lio/bidmachine/util/version/Version;IJJJJ)V

    return-object v1

    .line 79
    :cond_37
    const-string p1, "Required value was null."

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3f

    :catchall_3f
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6

    const-string v0, "jsonArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_23

    .line 64
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 65
    invoke-virtual {p0, v3}, Lio/bidmachine/internal/T;->a(Lorg/json/JSONObject;)Lio/bidmachine/internal/S;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 70
    :cond_23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 4

    const-string v0, "versionMilestoneList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/internal/S;

    .line 54
    invoke-virtual {p0, v1}, Lio/bidmachine/internal/T;->a(Lio/bidmachine/internal/S;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    :cond_22
    return-object v0
.end method

.method public final a(Lio/bidmachine/internal/S;)Lorg/json/JSONObject;
    .registers 6

    const-string v0, "versionMilestone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    invoke-virtual {p1}, Lio/bidmachine/internal/S;->f()Lio/bidmachine/util/version/Version;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/util/version/Version;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ver"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p1}, Lio/bidmachine/internal/S;->e()I

    move-result v1

    const-string v2, "scn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p1}, Lio/bidmachine/internal/S;->b()J

    move-result-wide v1

    const-string v3, "fst"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p1}, Lio/bidmachine/internal/S;->d()J

    move-result-wide v1

    const-string v3, "lst"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {p1}, Lio/bidmachine/internal/S;->a()J

    move-result-wide v1

    const-string v3, "csd"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {p1}, Lio/bidmachine/internal/S;->c()J

    move-result-wide v1

    const-string p1, "lsd"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

###### Class io.bidmachine.internal.T.a (io.bidmachine.internal.T$a)
.class public final Lio/bidmachine/internal/T$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/internal/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lio/bidmachine/internal/T$a;-><init>()V

    return-void
.end method
