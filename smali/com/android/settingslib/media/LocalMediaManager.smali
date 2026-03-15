.class public Lcom/android/settingslib/media/LocalMediaManager;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;,
        Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothMediaManager:Lcom/android/settingslib/media/BluetoothMediaManager;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field final mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mMediaDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/media/LocalMediaManager;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/BluetoothMediaManager;Lcom/android/settingslib/media/InfoMediaManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 56
    new-instance p4, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-direct {p4, p0}, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    iput-object p4, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    .line 63
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 104
    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 106
    iput-object p3, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothMediaManager:Lcom/android/settingslib/media/BluetoothMediaManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 56
    new-instance p2, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-direct {p2, p0}, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    iput-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 89
    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    .line 91
    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 92
    iget-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p2, :cond_0

    const-string p0, "LocalMediaManager"

    const-string p1, "Bluetooth is not supported on this device"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/android/settingslib/media/BluetoothMediaManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settingslib/media/BluetoothMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/app/Notification;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothMediaManager:Lcom/android/settingslib/media/BluetoothMediaManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->addPhoneDeviceIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->removePhoneMediaDeviceIfNecessary()V

    return-void
.end method

.method private addPhoneDeviceIfNecessary()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/settingslib/media/PhoneMediaDevice;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/media/PhoneMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private isConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    const/4 p0, 0x2

    .line 234
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x15

    .line 235
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private removePhoneMediaDeviceIfNecessary()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 224
    instance-of v2, v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    if-eqz v2, :cond_0

    .line 225
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settingslib/media/LocalMediaManager;->isConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public connectDevice(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    .line 115
    instance-of v0, p1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 117
    invoke-virtual {v0}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-ne p1, v0, :cond_1

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectDevice() this device all ready connected! : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalMediaManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->disconnect()V

    .line 134
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->connect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    .line 142
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    return-void
.end method

.method dispatchDeviceListUpdate()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    sget-object v2, Lcom/android/settingslib/media/LocalMediaManager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onDeviceListUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 185
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 148
    invoke-interface {v1, p1, p2}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    goto :goto_0

    .line 150
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p0
.end method

.method public getMediaDeviceById(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settingslib/media/MediaDevice;"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    .line 205
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const-string p0, "LocalMediaManager"

    const-string p1, "getMediaDeviceById() can\'t found device"

    .line 209
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startScan()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothMediaManager:Lcom/android/settingslib/media/BluetoothMediaManager;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/MediaManager;->registerCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V

    .line 159
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothMediaManager:Lcom/android/settingslib/media/BluetoothMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->startScan()V

    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothMediaManager:Lcom/android/settingslib/media/BluetoothMediaManager;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/MediaManager;->unregisterCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V

    .line 193
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothMediaManager:Lcom/android/settingslib/media/BluetoothMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->stopScan()V

    return-void
.end method

.method public unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
