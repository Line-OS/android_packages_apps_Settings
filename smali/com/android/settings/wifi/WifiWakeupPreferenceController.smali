.class public Lcom/android/settings/wifi/WifiWakeupPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiWakeupPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mLocationFilter:Landroid/content/IntentFilter;

.field mLocationManager:Landroid/location/LocationManager;

.field private final mLocationReceiver:Landroid/content/BroadcastReceiver;

.field mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$1;-><init>(Lcom/android/settings/wifi/WifiWakeupPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationFilter:Landroid/content/IntentFilter;

    .line 74
    iput-object p2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const-string p2, "location"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    .line 76
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private getWifiScanningEnabled()Z
    .locals 2

    .line 160
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "wifi_scan_always_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private getWifiWakeupEnabled()Z
    .locals 2

    .line 172
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "wifi_wakeup_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isWifiWakeupAvailable()Z
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->getWifiWakeupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->getWifiScanningEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    .line 182
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setWifiWakeupEnabled(Z)V
    .locals 1

    .line 186
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_wakeup_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showScanningDialog()V
    .locals 3

    .line 166
    invoke-static {}, Lcom/android/settings/wifi/WifiScanningRequiredFragment;->newInstance()Lcom/android/settings/wifi/WifiScanningRequiredFragment;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 168
    iget-object p0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "WifiWakeupPrefController"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "enable_wifi_wakeup"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 83
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method getNoLocationSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 144
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "link"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121232

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 146
    invoke-static {p0, v1}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_wifi_wakeup"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable_wifi_wakeup"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    instance-of p1, p1, Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_1

    return v1

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->isWifiWakeupAvailable()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 105
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->setWifiWakeupEnabled(Z)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 108
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v1, 0x258

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    .line 111
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->getWifiScanningEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->showScanningDialog()V

    goto :goto_0

    .line 114
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->setWifiWakeupEnabled(Z)V

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return v0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(II)V
    .locals 0

    const/16 p2, 0x258

    if-eq p1, p2, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->getWifiScanningEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->setWifiWakeupEnabled(Z)V

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 129
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/SwitchPreference;

    .line 134
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->isWifiWakeupAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->getNoLocationSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const p0, 0x7f121231

    .line 138
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
