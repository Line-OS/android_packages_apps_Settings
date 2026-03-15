.class public Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;
.super Lcom/android/settings/sound/AudioSwitchPreferenceController;
.source "HandsFreeProfileOutputPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getConnectedDeviceIndex(Ljava/lang/String;)I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 78
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public findActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->findActiveHearingAidDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 184
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object p0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getDefaultDeviceIndex()I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 48
    check-cast p2, Ljava/lang/String;

    .line 49
    instance-of v0, p1, Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120969

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    check-cast p1, Landroidx/preference/ListPreference;

    .line 55
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result p2

    iput p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getConnectedDeviceIndex(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    return v1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 67
    iput p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 69
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    .line 170
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 173
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 175
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference;)V
    .locals 0

    .line 157
    check-cast p3, Landroidx/preference/ListPreference;

    .line 158
    invoke-virtual {p3, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p3, p2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 160
    iget p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    invoke-virtual {p3, p2}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 161
    iget p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    aget-object p1, p1, p2

    invoke-virtual {p3, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

    invoke-interface {p0, p3}, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;->onPreferenceDataChanged(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120969

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    iget v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    aput-object v0, p1, v1

    .line 143
    aput-object v0, p2, v1

    .line 144
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 146
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 147
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    .line 148
    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iput v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f120969

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getConnectedHfpDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getConnectedHearingAidDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/CharSequence;

    aput-object v0, v1, v2

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 114
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v1, v1, p1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference;)V

    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    add-int/2addr v0, v3

    .line 120
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 121
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->findActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V

    .line 127
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference;)V

    return-void
.end method
