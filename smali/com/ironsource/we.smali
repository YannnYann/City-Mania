###### Class com.ironsource.C3915we (com.ironsource.we)
.class public final Lcom/ironsource/we;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/we;

.field public static final b:Ljava/lang/String; = "userId"

.field public static final c:Ljava/lang/String; = "appKey"

.field public static final d:Ljava/lang/String; = "noInternetConnection"

.field public static final e:Ljava/lang/String; = "serverResponseIsNotValid"

.field public static final f:Ljava/lang/String; = "noServerResponse"

.field public static final g:Ljava/lang/String; = "decryptionFailed"

.field public static final h:Ljava/lang/String; = "noResponseKey"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/we;

    invoke-direct {v0}, Lcom/ironsource/we;-><init>()V

    sput-object v0, Lcom/ironsource/we;->a:Lcom/ironsource/we;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
