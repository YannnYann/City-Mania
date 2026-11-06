###### Class io.bidmachine.utils.BluetoothUtils (io.bidmachine.utils.BluetoothUtils)
.class public Lio/bidmachine/utils/BluetoothUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field public static isRegistered:Z

.field public static final listener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public static final profileArray:[I

.field public static final proxyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lio/bidmachine/utils/BluetoothUtils;->profileArray:[I

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lio/bidmachine/utils/BluetoothUtils;->proxyMap:Ljava/util/Map;

    .line 7
    new-instance v0, Lio/bidmachine/utils/BluetoothUtils$a;

    invoke-direct {v0}, Lio/bidmachine/utils/BluetoothUtils$a;-><init>()V

    sput-object v0, Lio/bidmachine/utils/BluetoothUtils;->listener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lio/bidmachine/utils/BluetoothUtils;->isRegistered:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/utils/BluetoothUtils;->proxyMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getConnectedDevices(Landroid/content/Context;Ljava/lang/Integer;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lio/bidmachine/core/Utils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 6
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    .line 10
    :cond_11
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_65

    .line 11
    :try_start_16
    sget-object v0, Lio/bidmachine/utils/BluetoothUtils;->proxyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz p1, :cond_3a

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 13
    :cond_3a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_20

    .line 15
    invoke-interface {v1}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 16
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 18
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_63} :catch_64

    goto :goto_4a

    :catch_64
    :cond_64
    move-object v0, p0

    :catch_65
    return-object v0
.end method

.method public static getConnectedHeadsets(Landroid/content/Context;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/utils/BluetoothUtils;->getConnectedDevices(Landroid/content/Context;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static isHeadsetConnected(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4

    .line 1
    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lio/bidmachine/core/Utils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    .line 5
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_16

    .line 7
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, -0x1

    :goto_17
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 9
    :goto_1c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    return-object v0
.end method

.method public static register(Landroid/content/Context;)V
    .registers 8

    if-eqz p0, :cond_35

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_35

    .line 4
    :cond_9
    sget-boolean v0, Lio/bidmachine/utils/BluetoothUtils;->isRegistered:Z

    if-eqz v0, :cond_e

    goto :goto_35

    .line 7
    :cond_e
    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lio/bidmachine/core/Utils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_35

    .line 11
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1e

    goto :goto_35

    .line 15
    :cond_1e
    sget-object v1, Lio/bidmachine/utils/BluetoothUtils;->profileArray:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_32

    aget v4, v1, v3

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lio/bidmachine/utils/BluetoothUtils;->listener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v5, v6, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2f} :catch_32

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :catch_32
    :cond_32
    const/4 p0, 0x1

    .line 22
    sput-boolean p0, Lio/bidmachine/utils/BluetoothUtils;->isRegistered:Z

    :cond_35
    :goto_35
    return-void
.end method

###### Class io.bidmachine.utils.BluetoothUtils.a (io.bidmachine.utils.BluetoothUtils$a)
.class public Lio/bidmachine/utils/BluetoothUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/utils/BluetoothUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4

    .line 1
    invoke-static {}, Lio/bidmachine/utils/BluetoothUtils;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    .line 0
    return-void
.end method
