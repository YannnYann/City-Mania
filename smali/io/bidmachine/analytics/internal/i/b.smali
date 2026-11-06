###### Class io.bidmachine.analytics.internal.i.C4128b (io.bidmachine.analytics.internal.i.b)
.class public final Lio/bidmachine/analytics/internal/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/i/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/i/b$a;
    }
.end annotation


# static fields
.field public static final f:Lio/bidmachine/analytics/internal/i/b$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/a/f;

.field private final b:Lio/bidmachine/analytics/internal/a/f;

.field private final c:Lio/bidmachine/analytics/internal/a/f;

.field private final d:Lio/bidmachine/analytics/internal/a/f;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/i/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/i/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/i/b;->f:Lio/bidmachine/analytics/internal/i/b$a;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Ljava/util/Map;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i/b;->a:Lio/bidmachine/analytics/internal/a/f;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/i/b;->b:Lio/bidmachine/analytics/internal/a/f;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/i/b;->c:Lio/bidmachine/analytics/internal/a/f;

    .line 5
    iput-object p4, p0, Lio/bidmachine/analytics/internal/i/b;->d:Lio/bidmachine/analytics/internal/a/f;

    .line 6
    iput-object p5, p0, Lio/bidmachine/analytics/internal/i/b;->e:Ljava/util/Map;

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;)Z
    .registers 4

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-nez p3, :cond_7

    goto :goto_10

    .line 5
    :cond_7
    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt__RangesKt;->rangeTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i/b;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final a(Lio/bidmachine/analytics/internal/a/f;)Z
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i/b;->c:Lio/bidmachine/analytics/internal/a/f;

    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i/b;->d:Lio/bidmachine/analytics/internal/a/f;

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/analytics/internal/i/b;->a(Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;)Z

    move-result p1

    return p1
.end method

.method public final b(Lio/bidmachine/analytics/internal/a/f;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i/b;->a:Lio/bidmachine/analytics/internal/a/f;

    .line 2
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i/b;->b:Lio/bidmachine/analytics/internal/a/f;

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/analytics/internal/i/b;->a(Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.analytics.internal.i.C4128b.a (io.bidmachine.analytics.internal.i.b$a)
.class public final Lio/bidmachine/analytics/internal/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/i/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/i/b;
    .registers 11

    .line 1
    :try_start_0
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_89

    .line 4
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    const-string p1, "afpath"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 30
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    sget-object v3, Lio/bidmachine/analytics/internal/a/f;->d:Lio/bidmachine/analytics/internal/a/f$a;

    invoke-virtual {v3, v2}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 32
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_3f

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 33
    :cond_3f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v7, 0x0

    :goto_49
    if-ge v7, v5, :cond_55

    .line 35
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 37
    :cond_55
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 40
    :cond_59
    new-instance v1, Lio/bidmachine/analytics/internal/i/b;

    .line 41
    sget-object p1, Lio/bidmachine/analytics/internal/a/f;->d:Lio/bidmachine/analytics/internal/a/f$a;

    const-string v2, "afmin"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v2

    .line 42
    const-string v3, "afmax"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v3

    .line 43
    const-string v4, "adjmin"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v4

    .line 44
    const-string v5, "adjmax"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v5

    .line 45
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/analytics/internal/i/b;-><init>(Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Lio/bidmachine/analytics/internal/a/f;Ljava/util/Map;)V
    :try_end_88
    .catchall {:try_start_0 .. :try_end_88} :catchall_89

    return-object v1

    :catchall_89
    :goto_89
    const/4 p1, 0x0

    return-object p1
.end method
