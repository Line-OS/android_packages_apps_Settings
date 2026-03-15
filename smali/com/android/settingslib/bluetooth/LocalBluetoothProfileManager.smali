.class public Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;,
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

.field private mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

.field private mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

.field private mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

.field private mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

.field private mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

.field private mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

.field private mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

.field private mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

.field private mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

.field private mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 113
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 115
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 116
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 118
    invoke-virtual {p2, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    const-string p0, "LocalBluetoothProfileManager"

    const-string p1, "LocalBluetoothProfileManager construction complete"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/BluetoothEventManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    return-object p0
.end method

.method private addHeadsetProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 226
    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;

    invoke-direct {v0, p0, p1, p4, p5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;I)V

    .line 228
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p5, p3, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 229
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p3, p4, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 230
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addPanProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 246
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 239
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 1

    .line 363
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 364
    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 1

    .line 370
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 371
    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    return-object p0
.end method

.method public getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    return-object p0
.end method

.method public getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    return-object p0
.end method

.method getHidDeviceProfile()Lcom/android/settingslib/bluetooth/HidDeviceProfile;
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    return-object p0
.end method

.method getHidProfile()Lcom/android/settingslib/bluetooth/HidProfile;
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    return-object p0
.end method

.method public getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    return-object p0
.end method

.method public getPbapClientProfile()Lcom/android/settingslib/bluetooth/PbapClientProfile;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    return-object p0
.end method

.method public getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    return-object p0
.end method

.method public getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-object p0
.end method

.method public removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setBluetoothStateOn()V
    .locals 0

    .line 255
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles()V

    .line 256
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    return-void
.end method

.method updateLocalProfiles()V
    .locals 11

    .line 127
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const-string v2, "LocalBluetoothProfileManager"

    if-eqz v1, :cond_0

    const-string p0, "supportedList is null"

    .line 129
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Adding local A2DP profile"

    .line 133
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 135
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const-string v3, "A2DP"

    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-nez v1, :cond_2

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Adding local A2DP SINK profile"

    .line 139
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 141
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    const-string v3, "A2DPSink"

    const-string v4, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Adding local HEADSET profile"

    .line 145
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 147
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/16 v10, 0xa

    const-string v7, "HEADSET"

    const-string v8, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    const-string v9, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addHeadsetProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    if-nez v1, :cond_4

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Adding local HfpClient profile"

    .line 153
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Lcom/android/settingslib/bluetooth/HfpClientProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/HfpClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 155
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    const/4 v10, 0x0

    const-string v7, "HEADSET_CLIENT"

    const-string v8, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    const-string v9, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addHeadsetProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    if-nez v1, :cond_5

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Adding local MAP CLIENT profile"

    .line 161
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Lcom/android/settingslib/bluetooth/MapClientProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/MapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 163
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const-string v3, "MAP Client"

    const-string v4, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    if-nez v1, :cond_6

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Adding local MAP profile"

    .line 167
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v1, Lcom/android/settingslib/bluetooth/MapProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 169
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    const-string v3, "MAP"

    const-string v4, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    if-nez v1, :cond_7

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Adding local OPP profile"

    .line 172
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v1, Lcom/android/settingslib/bluetooth/OppProfile;

    invoke-direct {v1}, Lcom/android/settingslib/bluetooth/OppProfile;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    .line 175
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    const-string v4, "OPP"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v1, :cond_8

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Adding local Hearing Aid profile"

    .line 178
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 181
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const-string v3, "HearingAid"

    const-string v4, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    if-nez v1, :cond_9

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Adding local HID_HOST profile"

    .line 185
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v1, Lcom/android/settingslib/bluetooth/HidProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    .line 187
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    const-string v3, "HID"

    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    if-nez v1, :cond_a

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Adding local HID_DEVICE profile"

    .line 191
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 193
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    const-string v3, "HID DEVICE"

    const-string v4, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_a
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    if-nez v1, :cond_b

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Adding local PAN profile"

    .line 197
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v1, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    .line 199
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    const-string v3, "PAN"

    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_b
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v1, :cond_c

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Adding local PBAP profile"

    .line 203
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settingslib/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 205
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const-string v3, "PBAP Server"

    const-string v4, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    if-nez v1, :cond_d

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Adding local PBAP Client profile"

    .line 209
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Lcom/android/settingslib/bluetooth/PbapClientProfile;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, v3, v4, p0}, Lcom/android/settingslib/bluetooth/PbapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 211
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const-string v3, "PbapClient"

    const-string v4, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    if-nez v1, :cond_e

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Adding local SAP profile"

    .line 216
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Lcom/android/settingslib/bluetooth/SapProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settingslib/bluetooth/SapProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 219
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    const-string v1, "SAP"

    const-string v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_e
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    return-void
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 462
    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 463
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    const-string v0, "LocalBluetoothProfileManager"

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Profiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 470
    monitor-exit p0

    return-void

    .line 473
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 474
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 475
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 476
    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 477
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 484
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 485
    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 486
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 490
    :cond_4
    sget-object v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 492
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 496
    :cond_5
    sget-object v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_6

    .line 498
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 502
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    if-eqz v0, :cond_7

    .line 504
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 508
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    .line 509
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    if-eqz v0, :cond_9

    .line 511
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 515
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    invoke-virtual {v0, p6}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 517
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p5, :cond_b

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_b
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    if-nez v0, :cond_d

    :cond_c
    if-eqz p5, :cond_e

    .line 525
    :cond_d
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 529
    :cond_e
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p5, :cond_f

    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 530
    invoke-virtual {p5, p6}, Lcom/android/settingslib/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p5

    if-ne p5, v1, :cond_f

    .line 531
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 533
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-virtual {p5, p6, v0}, Lcom/android/settingslib/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 536
    :cond_f
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz p5, :cond_10

    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 537
    invoke-virtual {p5, p6}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p5

    if-ne p5, v1, :cond_10

    .line 538
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 540
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-virtual {p5, p6, v0}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 543
    :cond_10
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    if-eqz p5, :cond_11

    .line 544
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-interface {p3, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-interface {p4, p5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 548
    :cond_11
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    if-eqz p5, :cond_12

    sget-object p5, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    .line 549
    invoke-static {p2, p5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_12

    sget-object p2, Lcom/android/settingslib/bluetooth/PbapClientProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    .line 550
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 551
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 555
    :cond_12
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HearingAid:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p2, :cond_13

    .line 557
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 561
    :cond_13
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    if-eqz p2, :cond_14

    sget-object p2, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 562
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-interface {p4, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_14
    const-string p1, "LocalBluetoothProfileManager"

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "New Profiles"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
