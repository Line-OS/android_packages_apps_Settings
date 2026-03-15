.class public Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioCodecPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 3

    .line 132
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p0

    const/4 p1, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_4

    if-eq p0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v2

    :cond_4
    :goto_0
    return p1
.end method

.method protected getDefaultIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_select_a2dp_codec"

    return-object p0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xf4240

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 117
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 121
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 110
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 111
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 114
    :cond_1
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_0
    :pswitch_2
    move v5, v1

    goto :goto_5

    :goto_1
    :pswitch_3
    move v5, v2

    goto :goto_5

    :goto_2
    :pswitch_4
    move v5, v3

    goto :goto_5

    :goto_3
    :pswitch_5
    move v5, v4

    goto :goto_5

    .line 66
    :pswitch_6
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_4

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_2

    :cond_5
    move v6, v5

    goto :goto_3

    :cond_6
    :goto_4
    move v6, v5

    .line 126
    :goto_5
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v5}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 127
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p0, v6}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
