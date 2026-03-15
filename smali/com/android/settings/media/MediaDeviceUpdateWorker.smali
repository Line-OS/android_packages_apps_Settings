.class public Lcom/android/settings/media/MediaDeviceUpdateWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "MediaDeviceUpdateWorker.java"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field private final mMediaDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildMediaDevices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method

.method public connectDevice(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$wVvhQIrVpe7aFDjrvNElD635YYA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$wVvhQIrVpe7aFDjrvNElD635YYA;-><init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method public getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method public getMediaDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public synthetic lambda$connectDevice$0$MediaDeviceUpdateWorker(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->buildMediaDevices(Ljava/util/List;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method protected onSlicePinned()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 63
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    return-void
.end method
