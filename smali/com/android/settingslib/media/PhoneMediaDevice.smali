.class public Lcom/android/settingslib/media/PhoneMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "PhoneMediaDevice.java"


# instance fields
.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mSummary:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;I)V

    const-string p1, ""

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mSummary:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 46
    iget-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 47
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settingslib/media/PhoneMediaDevice;->updateSummary(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->setConnectedRecord()V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect() device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", is selected : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneMediaDevice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/PhoneMediaDevice;->updateSummary(Z)V

    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$drawable;->ic_smartphone:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    .line 62
    invoke-static {v0, v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    const-string p0, "phone_media_device_id_1"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->media_transfer_this_device_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateSummary(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_active_no_battery_level:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 108
    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mSummary:Ljava/lang/String;

    return-void
.end method
