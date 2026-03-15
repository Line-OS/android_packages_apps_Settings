.class public Lcom/android/settings/wifi/WifiInfoPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiIpAddressPref:Landroidx/preference/Preference;

.field private mWifiMacAddressPref:Landroidx/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance p1, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController$1;-><init>(Lcom/android/settings/wifi/WifiInfoPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p3, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 61
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string p3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "mac_address"

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroidx/preference/Preference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    const-string v0, "current_ip_address"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroidx/preference/Preference;

    .line 84
    iget-object p0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;->updateWifiInfo()V

    return-void
.end method

.method public updateWifiInfo()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroidx/preference/Preference;

    const v1, 0x7f120e3d

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11100f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "02:00:00:00:00:00"

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroidx/preference/Preference;

    const v2, 0x7f121217

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 107
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 109
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 114
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v2, p0, Lcom/android/settings/wifi/WifiInfoPreferenceController;->mWifiIpAddressPref:Landroidx/preference/Preference;

    if-nez v0, :cond_5

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 118
    :cond_5
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 116
    :goto_3
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method
