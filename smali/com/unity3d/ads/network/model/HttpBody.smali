###### Class com.unity3d.ads.network.model.HttpBody (com.unity3d.ads.network.model.HttpBody)
.class public interface abstract Lcom/unity3d/ads/network/model/HttpBody;
.super Ljava/lang/Object;
.source "HttpBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/network/model/HttpBody$ByteArrayBody;,
        Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;,
        Lcom/unity3d/ads/network/model/HttpBody$StringBody;
    }
.end annotation

###### Class com.unity3d.ads.network.model.HttpBody.ByteArrayBody (com.unity3d.ads.network.model.HttpBody$ByteArrayBody)
.class public final Lcom/unity3d/ads/network/model/HttpBody$ByteArrayBody;
.super Ljava/lang/Object;
.source "HttpBody.kt"

# interfaces
.implements Lcom/unity3d/ads/network/model/HttpBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/network/model/HttpBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArrayBody"
.end annotation


# instance fields
.field private final content:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/network/model/HttpBody$ByteArrayBody;->content:[B

    return-void
.end method


# virtual methods
.method public final getContent()[B
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/unity3d/ads/network/model/HttpBody$ByteArrayBody;->content:[B

    return-object v0
.end method

###### Class com.unity3d.ads.network.model.HttpBody.EmptyBody (com.unity3d.ads.network.model.HttpBody$EmptyBody)
.class public final Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;
.super Ljava/lang/Object;
.source "HttpBody.kt"

# interfaces
.implements Lcom/unity3d/ads/network/model/HttpBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/network/model/HttpBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyBody"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;

    invoke-direct {v0}, Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;-><init>()V

    sput-object v0, Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;->INSTANCE:Lcom/unity3d/ads/network/model/HttpBody$EmptyBody;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.network.model.HttpBody.StringBody (com.unity3d.ads.network.model.HttpBody$StringBody)
.class public final Lcom/unity3d/ads/network/model/HttpBody$StringBody;
.super Ljava/lang/Object;
.source "HttpBody.kt"

# interfaces
.implements Lcom/unity3d/ads/network/model/HttpBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/network/model/HttpBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringBody"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/network/model/HttpBody$StringBody;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/unity3d/ads/network/model/HttpBody$StringBody;->content:Ljava/lang/String;

    return-object v0
.end method
