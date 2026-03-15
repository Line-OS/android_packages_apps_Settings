.class public Lcom/android/settings/wifi/WifiConnectionPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiConnectionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;
    }
.end annotation


# instance fields
.field private mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mMetricsCategory:I

.field private mPrefContext:Landroid/content/Context;

.field private mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupKey:Ljava/lang/String;

.field private mUpdateListener:Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field private order:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;Ljava/lang/String;II)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mUpdateListener:Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;

    .line 81
    iput-object p4, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    const/4 p3, 0x1

    .line 82
    invoke-static {p1, p0, p2, p3, p3}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 84
    iput p5, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->order:I

    .line 85
    iput p6, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mMetricsCategory:I

    .line 86
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method private getCurrentAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 2

    .line 108
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    .line 109
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private update()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->getCurrentAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 152
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->updatePreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    goto :goto_2

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->updatePreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 160
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mUpdateListener:Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController$UpdateListener;->onChildrenUpdated()V

    return-void
.end method

.method private updatePreference(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPrefContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 125
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const v5, 0x7f08029d

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 127
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    const-string v0, "active_wifi_connection"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 129
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->order:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$k0PQHjeTeRkU3O6EXzOzW4u2s_g;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$k0PQHjeTeRkU3O6EXzOzW4u2s_g;-><init>(Lcom/android/settings/wifi/WifiConnectionPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 103
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->update()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "active_wifi_connection"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->getCurrentAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$updatePreference$0$WifiConnectionPreferenceController(Landroidx/preference/Preference;)Z
    .locals 2

    .line 132
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPreference:Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120b57

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->mMetricsCategory:I

    .line 138
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public onAccessPointsChanged()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->update()V

    return-void
.end method

.method public onConnectedChanged()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->update()V

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->update()V

    return-void
.end method
