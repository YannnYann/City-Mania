###### Class ads_mobile_sdk.gu1 (ads_mobile_sdk.gu1)
.class public Lads_mobile_sdk/gu1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/gu1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/gu1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/gu1$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/u24$a;",
            "TK;",
            "Lads_mobile_sdk/u24$a;",
            "TV;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lads_mobile_sdk/gu1$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lads_mobile_sdk/gu1$a;-><init>(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/gu1;->a:Lads_mobile_sdk/gu1$a;

    .line 58
    iput-object p2, p0, Lads_mobile_sdk/gu1;->b:Ljava/lang/Object;

    .line 59
    iput-object p4, p0, Lads_mobile_sdk/gu1;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lads_mobile_sdk/gu1$a;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/gu1$a<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lads_mobile_sdk/gu1$a;->a:Lads_mobile_sdk/u24$a;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/u24$a;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lads_mobile_sdk/gu1$a;->c:Lads_mobile_sdk/u24$a;

    const/4 v0, 0x2

    .line 237
    invoke-static {p0, v0, p2}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/u24$a;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static a(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)Lads_mobile_sdk/gu1;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/u24$a;",
            "TK;",
            "Lads_mobile_sdk/u24$a;",
            "TV;)",
            "Lads_mobile_sdk/gu1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 563
    new-instance v0, Lads_mobile_sdk/gu1;

    invoke-direct {v0, p0, p1, p2, p3}, Lads_mobile_sdk/gu1;-><init>(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lads_mobile_sdk/oy;Lads_mobile_sdk/gu1$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lads_mobile_sdk/oy;",
            "Lads_mobile_sdk/gu1$a<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iget-object v0, p1, Lads_mobile_sdk/gu1$a;->a:Lads_mobile_sdk/u24$a;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/oy;Lads_mobile_sdk/u24$a;ILjava/lang/Object;)V

    .line 562
    iget-object p1, p1, Lads_mobile_sdk/gu1$a;->c:Lads_mobile_sdk/u24$a;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/qr0;->a(Lads_mobile_sdk/oy;Lads_mobile_sdk/u24$a;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lads_mobile_sdk/oy;->h(I)I

    move-result p1

    iget-object v0, p0, Lads_mobile_sdk/gu1;->a:Lads_mobile_sdk/gu1$a;

    .line 139
    invoke-static {v0, p2, p3}, Lads_mobile_sdk/gu1;->a(Lads_mobile_sdk/gu1$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 140
    invoke-static {p2}, Lads_mobile_sdk/oy;->d(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2
.end method

.method public a()Lads_mobile_sdk/gu1$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lads_mobile_sdk/gu1$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lads_mobile_sdk/gu1;->a:Lads_mobile_sdk/gu1$a;

    return-object v0
.end method

###### Class ads_mobile_sdk.gu1.a (ads_mobile_sdk.gu1$a)
.class Lads_mobile_sdk/gu1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/gu1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lads_mobile_sdk/u24$a;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:Lads_mobile_sdk/u24$a;

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lads_mobile_sdk/u24$a;Ljava/lang/Object;Lads_mobile_sdk/u24$a;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/u24$a;",
            "TK;",
            "Lads_mobile_sdk/u24$a;",
            "TV;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lads_mobile_sdk/gu1$a;->a:Lads_mobile_sdk/u24$a;

    .line 41
    iput-object p2, p0, Lads_mobile_sdk/gu1$a;->b:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lads_mobile_sdk/gu1$a;->c:Lads_mobile_sdk/u24$a;

    .line 43
    iput-object p4, p0, Lads_mobile_sdk/gu1$a;->d:Ljava/lang/Object;

    return-void
.end method
