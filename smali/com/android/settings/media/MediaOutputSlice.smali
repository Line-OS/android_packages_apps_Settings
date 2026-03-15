.class public Lcom/android/settings/media/MediaOutputSlice;
.super Ljava/lang/Object;
.source "MediaOutputSlice.java"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "media_package_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private getActiveDeviceHeaderRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 5

    .line 103
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v2, 0x0

    .line 108
    invoke-static {p0, v1, v2, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    .line 111
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 112
    invoke-virtual {v3, v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 113
    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 114
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 115
    invoke-virtual {v3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-object v3
.end method

.method private getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 1

    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    const-class p0, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "media_device_id"

    .line 165
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 166
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-static {p1, p3, v0, p0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 121
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceIconCompat() device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", drawable is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOutputSlice"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const p1, 0x1080322

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    :cond_0
    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getMediaDeviceRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 4

    .line 147
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/media/MediaOutputSlice;->getBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaOutputSlice;->getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    .line 152
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    const/4 v3, 0x0

    .line 153
    invoke-virtual {v2, p0, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 154
    invoke-static {v1, p0, v3, v0}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 156
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 157
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-object v2
.end method

.method private getMediaDevices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    .line 134
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->setPackageName(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method private isVisible()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 205
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 207
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 194
    const-class p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f1302b4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 77
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/media/MediaOutputSlice;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v1, -0x1

    .line 78
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "MediaOutputSlice"

    const-string v1, "getSlice() is not visible"

    .line 81
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getMediaDevices()Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 89
    invoke-direct {p0, v2}, Lcom/android/settings/media/MediaOutputSlice;->getActiveDeviceHeaderRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 92
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/media/MediaDevice;

    if-eqz v2, :cond_3

    .line 94
    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/media/MediaOutputSlice;->getMediaDeviceRow(Lcom/android/settingslib/media/MediaDevice;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 173
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method init(Ljava/lang/String;Lcom/android/settings/media/MediaDeviceUpdateWorker;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->mPackageName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/settings/media/MediaOutputSlice;->mWorker:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-void
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->getWorker()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string v0, "media_device_id"

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 180
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotifyChange() device name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaOutputSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_1
    return-void
.end method
