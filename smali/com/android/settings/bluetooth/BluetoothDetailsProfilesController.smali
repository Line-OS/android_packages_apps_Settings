.class public Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsProfilesController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field static final HIGH_QUALITY_AUDIO_PREF_TAG:Ljava/lang/String; = "A2dpProfileHighQualityAudio"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mProfilesContainer:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 63
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 64
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 65
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 66
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreference;
    .locals 1

    .line 87
    new-instance v0, Landroidx/preference/SwitchPreference;

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 90
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    invoke-interface {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 154
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    const/4 p0, 0x0

    .line 155
    invoke-interface {p1, v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 156
    instance-of p0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0

    .line 158
    :cond_0
    instance-of p0, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz p0, :cond_1

    .line 159
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 137
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    return-void

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 145
    :cond_1
    invoke-interface {p1, v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 146
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private getProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v2

    .line 201
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object p0

    .line 205
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .line 221
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 225
    check-cast p1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 226
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 228
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "A2dpProfileHighQualityAudio"

    .line 229
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 231
    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$V7C0JDp13WLuPeXfbS-lwRipRyw;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothDetailsProfilesController$V7C0JDp13WLuPeXfbS-lwRipRyw;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;Lcom/android/settingslib/bluetooth/A2dpProfile;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 236
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private refreshProfilePreference(Landroidx/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 102
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 105
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 108
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_5

    .line 109
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 112
    :cond_5
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 115
    :goto_3
    instance-of p1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p1, :cond_7

    .line 116
    check-cast p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 117
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    const-string v1, "A2dpProfileHighQualityAudio"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_7

    .line 120
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 122
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 124
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 126
    :cond_6
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_profiles"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refresh()V

    return-void
.end method

.method public synthetic lambda$maybeAddHighQualityAudioPref$0$BluetoothDetailsProfilesController(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroidx/preference/Preference;)Z
    .locals 0

    .line 232
    check-cast p2, Landroidx/preference/SwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    .line 233
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onPause()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 179
    :cond_1
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 180
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->enableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 183
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->disableProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 185
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroidx/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 248
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onResume()V

    .line 249
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refresh()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refresh()V

    return-void
.end method

.method protected refresh()V
    .locals 4

    .line 268
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 269
    invoke-interface {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 273
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    if-nez v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->createProfilePreference(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreference;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 277
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->maybeAddHighQualityAudioPref(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 279
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->refreshProfilePreference(Landroidx/preference/SwitchPreference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 282
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 285
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    return-void
.end method
